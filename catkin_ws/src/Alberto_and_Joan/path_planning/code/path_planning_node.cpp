
/* ---------------------------------------------------------------------------- 
   -------------------- Path Planning Module (EPM) - ARAV --------------------- 
   ----------------------------------------------------------------------------
   ------------------------ Author : Joan Bessa Sanz -------------------------- 
   ------------- E-mail : joan.bessa-sanz@student.isae-supaero.fr ------------- 
   ----------- (c) Copyright 2022. Joan Bessa. All Rights Reserved ------------  
   ---------------------------------------------------------------------------- */

//TODO pass octree resolution as an argument
//TODO set space bounds as arguments
//TODO pass start and end goals as arguments

/* Import required libraries */

#include <ros/ros.h>
#include <std_msgs/Int8.h>
#include <std_msgs/Float32.h>
#include <octomap_msgs/Octomap.h>
#include <octomap_msgs/conversions.h>
#include <octomap_ros/conversions.h>
#include <octomap/octomap.h>
#include <message_filters/subscriber.h>
#include <visualization_msgs/Marker.h>
//#include <trajectory_msgs/MultiDOFJointTrajectory.h>
#include <std_msgs/Float64MultiArray.h>

#include <ompl/base/spaces/SE3StateSpace.h>
#include <ompl/base/OptimizationObjective.h>
#include <ompl/base/objectives/MechanicalWorkOptimizationObjective.h>
#include <ompl/base/objectives/StateCostIntegralObjective.h>
#include <ompl/base/objectives/PathLengthOptimizationObjective.h>
#include <ompl/geometric/planners/rrt/RRTstar.h>
#include <ompl/geometric/SimpleSetup.h>
#include <ompl/config.h>

#include <iostream>

#include <fcl/config.h>
#include <fcl/octree.h>
#include <fcl/traversal/traversal_node_octree.h>
#include <fcl/collision.h>
#include <fcl/broadphase/broadphase.h>
#include <fcl/math/transform.h>

/* Namespaces */

namespace ob = ompl::base;
namespace og = ompl::geometric;

/* Topic names - (Global variables) */

/* ---------- INPUTS ---------- */

static const std::string INPUT_TOPIC_EPM_STATUS = "/arav/EPM/Status";
static const std::string INPUT_TOPIC_MAP = "/arav/octomap_binary";

/* ---------- OUTPUTS --------- */

static const std::string OUTPUT_TOPIC_PATH_LENGTH = "/arav/path_planning/output/path_length";
static const std::string OUTPUT_TOPIC_PATH = "/arav/path_planning/output/path";
static const std::string OUTPUT_TOPIC_VIS = "/arav/path_planning/output/visualisation";


/* ----- GLOBAL VARIABLES ----- */

static bool octomap_received = false;
static bool path_computed = false;
static double min_aerial_height;

/* Definition of ROS Publishers */

ros::Publisher len_pub;
ros::Publisher traj_pub;
ros::Publisher vis_pub;

ros::Publisher ECost_pub;
ros::Publisher MWCost_pub;
ros::Publisher SCICost_pub;

/* Definition of Path Planning Collision Model */

std::shared_ptr<fcl::CollisionGeometry> ARAV_Robot(new fcl::Box(3.5, 3.5, 3));
fcl::OcTree* tree = new fcl::OcTree(std::shared_ptr<const octomap::OcTree>(new octomap::OcTree(0.1)));
fcl::CollisionObject treeObj((std::shared_ptr<fcl::CollisionGeometry>(tree)));
fcl::CollisionObject robotObject(ARAV_Robot);

/* State Validity Checker */

bool isStateValid(const ob::State *state)
{
    // Cast the abstract state type to the type we expect
	const ob::SE3StateSpace::StateType *se3state = state->as<ob::SE3StateSpace::StateType>();

    // Extract the first component (position) of the state and cast it to what we expect
	const ob::RealVectorStateSpace::StateType *pos = se3state->as<ob::RealVectorStateSpace::StateType>(0);

    // Extract the second component (rotation) of the state and cast it to what we expect
	const ob::SO3StateSpace::StateType *rot = se3state->as<ob::SO3StateSpace::StateType>(1);

    // Check validity of the state as defined by pos & rot
	fcl::Vec3f translation(pos->values[0],pos->values[1],pos->values[2]);
	fcl::Quaternion3f rotation(rot->w, rot->x, rot->y, rot->z);
	robotObject.setTransform(rotation, translation);
	fcl::CollisionRequest requestType(1,false,1,false);
	fcl::CollisionResult collisionResult;
	fcl::collide(&robotObject, &treeObj, requestType, collisionResult);

	return(!collisionResult.isCollision());
}

/* Optimization Objective Definition */

/* Custom Energy Objective */
class EnergyObjective : public ob::OptimizationObjective
{
	public:
		EnergyObjective(const ob::SpaceInformationPtr& si, const ob::State* goalState)
        : ob::OptimizationObjective(si), goalState_(goalState)
		{
			AerialFactor = 2.0;
			GroundFactor = 0.8;
			DistanceToGoalFactor = 5;

			description_ = "Custom Energy";
		}

		ob::Cost stateCost(const ob::State* s) const override {}

		ob::Cost motionCost(const ob::State *s1, const ob::State *s2) const override
		{
            // Compute the cost of the motion based on the mode of transport
            // and the energy consumption associated with that mode
            
			// Cast the abstract state type to the type we expect
			const ob::SE3StateSpace::StateType *state1 = s1->as<ob::SE3StateSpace::StateType>();

			// Cast the abstract state type to the type we expect
			const ob::SE3StateSpace::StateType *state2 = s2->as<ob::SE3StateSpace::StateType>();

			double factor = 0.0;
			if(std::round(state1->getZ() * 10) / 10.0 > 0.1 || std::round(state1->getZ() * 10) / 10.0 > 0.1)
			{
				factor = AerialFactor;
			}
			else
			{
				factor = GroundFactor;
			}
			
			
			std_msgs::Float32 cost;
			double costToGoal = si_->distance(s2, goalState_) * DistanceToGoalFactor;
			double costForMotion = si_->distance(s1, s2) * factor;
			cost.data = costToGoal + costForMotion;
			return ob::Cost(cost.data);
		}
	private:
		double AerialFactor;
		double GroundFactor;
		double DistanceToGoalFactor;
		const ob::State* goalState_;
};

/* Mechanical Work Optimization Objective */
class MechanicalWorkObjective : public ob::MechanicalWorkOptimizationObjective
{
public:
    MechanicalWorkObjective(const ob::SpaceInformationPtr& si) : ob::MechanicalWorkOptimizationObjective(si)
    {
        description_ = "Mechanical Work";
    }

    ob::Cost stateCost(const ob::State* s) const override
    {
		// Cast the abstract state type to the type we expect
		const ob::SE3StateSpace::StateType *state = s->as<ob::SE3StateSpace::StateType>();
		
        if(std::round(state->getZ() * 10) / 10.0 > 0.1)
		{
			return ob::Cost(2.0);
		}
		else
		{
			return ob::Cost(0.8);
		}
    }

	ob::Cost motionCost(const ob::State *s1, const ob::State *s2) const override
	{
		// Only accrue positive changes in cost
		double positiveCostAccrued = std::max(stateCost(s2).value() - stateCost(s1).value(), 0.0);
		std_msgs::Float32 cost;
		cost.data = positiveCostAccrued;
		return ob::Cost(cost.data);
	}
};

// /* State Cost Integral Objective */
class SCIObjective : public ob::StateCostIntegralObjective
{
public:
    SCIObjective(const ob::SpaceInformationPtr& si, bool enableMotionCostInterpolation) : ob::StateCostIntegralObjective(si, enableMotionCostInterpolation)
    {
        description_ = "State Cost Integral";
    }

    ob::Cost stateCost(const ob::State* s) const override
    {
		// Cast the abstract state type to the type we expect
		const ob::SE3StateSpace::StateType *state = s->as<ob::SE3StateSpace::StateType>();
		
        if(std::round(state->getZ() * 10) / 10.0 > 0.1)
		{
			return ob::Cost(2.0);
		}
		else
		{
			return ob::Cost(0.8);
		}
    }

	ob::Cost motionCost(const ob::State *s1, const ob::State *s2) const override
	{
		if (interpolateMotionCost_)
		{
			ob::Cost totalCost = this->identityCost();
	
			int nd = si_->getStateSpace()->validSegmentCount(s1, s2);
	
			ob::State *test1 = si_->cloneState(s1);
			ob::Cost prevStateCost = this->stateCost(test1);
			if (nd > 1)
			{
				ob::State *test2 = si_->allocState();
				for (int j = 1; j < nd; ++j)
				{
					si_->getStateSpace()->interpolate(s1, s2, (double)j / (double)nd, test2);
					ob::Cost nextStateCost = this->stateCost(test2);
					totalCost = ob::Cost(totalCost.value() +
									this->trapezoid(prevStateCost, nextStateCost, si_->distance(test1, test2)).value());
					std::swap(test1, test2);
					prevStateCost = nextStateCost;
				}
				si_->freeState(test2);
			}
	
			// Lastly, add s2
			totalCost = ob::Cost(totalCost.value() +
							this->trapezoid(prevStateCost, this->stateCost(s2), si_->distance(test1, s2)).value());
	
			si_->freeState(test1);
	
			return totalCost;
		}
			std_msgs::Float32 SCIcost;
			ob::Cost cost = this->trapezoid(this->stateCost(s1), this->stateCost(s2), si_->distance(s1, s2));
			SCIcost.data = cost.value();
			return cost;
	}
};

/* Path Definition Function */

void plan()
{
	// Create the state space for path planning
	ob::StateSpacePtr space(new ob::SE3StateSpace());

    // Set the bounds for the R^3 (translation) part of SE(3)
	ob::RealVectorBounds bounds(3);

	bounds.setLow(0,-10);
	bounds.setHigh(0,10);

	bounds.setLow(1,-10);
	bounds.setHigh(1,10);

	bounds.setLow(2,0.1);
	bounds.setHigh(2,10);

	space->as<ob::SE3StateSpace>()->setBounds(bounds);

    // Construct an instance of Space Information from this State Space
	ob::SpaceInformationPtr si(new ob::SpaceInformation(space));

    // Set State Validity Checking for this Space
	si->setStateValidityChecker(std::bind(&isStateValid, std::placeholders::_1));

    // Create the start state (start position)
	ob::ScopedState<ob::SE3StateSpace> start(space);
	start->setXYZ(0,0,0.1);
	start->as<ob::SO3StateSpace::StateType>(1)->setIdentity();

    // Create the goal state (goal position)
	ob::ScopedState<ob::SE3StateSpace> goal(space);
	goal->setXYZ(-10,0,0.1);
	goal->as<ob::SO3StateSpace::StateType>(1)->setIdentity();

    // Create problem instance
	ob::ProblemDefinitionPtr pdef(new ob::ProblemDefinition(si));

    // Set start and goal states
	pdef->setStartAndGoalStates(start, goal);

    // Create a planner for the defined space
	ob::PlannerPtr planner(new og::RRTstar(si));

	// Setting the search radius or the range of the planner
	// planner->as<og::RRTstar>()->setRange(3.0);

	// Custom Objective
	// auto obj = std::make_shared<EnergyObjective>(si, goal.get());
	// ob::OptimizationObjectivePtr obj(new EnergyObjective(si, goal.get()));
	// pdef->setOptimizationObjective(obj);
	
	// Mechanical Work Objective
	// ob::OptimizationObjectivePtr obj(new MechanicalWorkObjective(si));
	// pdef->setOptimizationObjective(obj);

	// State Cost Integral Objective
	ob::OptimizationObjectivePtr obj(new SCIObjective(si,false));
	pdef->setOptimizationObjective(obj);

    // Set the problem to be solved to the planner
	planner->setProblemDefinition(pdef);

    // Setup the planner
	planner->setup();

    // Print Space Settings
	si->printSettings(std::cout);

    // Print Problem Settings
	pdef->print(std::cout);

    // Attempt to solve problem in a definite amount of time
	ob::PlannerStatus solved = planner->solve(5); // Time in seconds


	std::cout << "Planner time finished." << std::endl;

	std_msgs::Float32 len_msg;

	if (solved)
	{
		// Get the solution from path planning with path smoothing
		og::PathSimplifier* pathBSpline = new og::PathSimplifier(si);
		og::PathGeometric path_smooth(dynamic_cast<const og::PathGeometric&>(*pdef->getSolutionPath()));
		pathBSpline->smoothBSpline(path_smooth,4);

		std::cout << "Found solution:" << std::endl;
		path_smooth.printAsMatrix(std::cout);
		

		// const ob::OptimizationObjectivePtr& obj = pdef->getOptimizationObjective();
		
		// std::cout << typeid(*obj).name() << std::endl;    Printing the objective class name
		// ob::PathGeometric path = pdef->getSolutionPath();
		
		// /* UNUSED - Non-smoothed path 
		// ob::PathPtr path = pdef->getSolutionPath();
		
		og::PathGeometric* pth = pdef->getSolutionPath()->as<og::PathGeometric>();

		int num_waypoints = pth->getStateCount();
		
		std_msgs::Float32 waypoint_costs;
    	double total_cost = 0.0;

		for (int i = 0; i < num_waypoints; i++)
		{
			if (i == 0)
			{
				// The cost of motion towards the first waypoint is 0.0 since it is the start state
				waypoint_costs.data = 0.8;
			}
			else
			{
				// Compute the cost of motion towards the current waypoint by subtracting the state cost from the previous waypoint
				const ob::State* prev_state = pth->getState(i - 1);
				const ob::State* curr_state = pth->getState(i);
				ob::Cost motion_cost = obj->motionCost(prev_state, curr_state);
				waypoint_costs.data = motion_cost.value();
			}
		ECost_pub.publish(waypoint_costs);
		MWCost_pub.publish(waypoint_costs);
		SCICost_pub.publish(waypoint_costs);
		}

		/*---------------------------- */

		std_msgs::Float64MultiArray msg;
		std::vector<double> point = { 0.0, 0.0, 0.0};
		
		double length = path_smooth.length();
		// double length = pth->length();
		len_msg.data = length;

		/* UNUSED - Different type of trajectory topic
		trajectory_msgs::MultiDOFJointTrajectory msg;
		trajectory_msgs::MultiDOFJointTrajectoryPoint point_msg;
		msg.header.stamp = ros::Time::now();
		msg.header.frame_id = "base_link";
		msg.joint_names.clear();
		msg.points.clear();
		msg.joint_names.push_back("ARAV_Robot");
		----------------------------------------------*/

		/* -- Definition of visualisation marker -- */
		visualization_msgs::Marker marker;
		marker.header.frame_id = "base_link";
		marker.header.stamp = ros::Time::now();
		marker.ns = "ARAV_Path";
		marker.id = 0;
		marker.type = visualization_msgs::Marker::LINE_STRIP;
		marker.action = visualization_msgs::Marker::ADD;
		marker.scale.x = 0.03; // Lines only need x scale (width)
		marker.color.a = 1.0;
		marker.color.r = 0.0;
		marker.color.g = 1.0;
		marker.color.b = 0.0;

		for (std::size_t path_idx = 0; path_idx < path_smooth.getStateCount (); path_idx++)
		{
			const ob::SE3StateSpace::StateType *se3state = path_smooth.getState(path_idx)->as<ob::SE3StateSpace::StateType>();

            // Extract the first component of the state and cast it to what we expect
			const ob::RealVectorStateSpace::StateType *pos = se3state->as<ob::RealVectorStateSpace::StateType>(0);

            // Extract the second component of the state and cast it to what we expect
			const ob::SO3StateSpace::StateType *rot = se3state->as<ob::SO3StateSpace::StateType>(1);

			point[0] = -pos->values[0];
			point[1] = pos->values[1];
			point[2] = pos->values[2];
			
			msg.data = point;

			traj_pub.publish(msg);

			/* -- Creation of visualisation marker -- */
			geometry_msgs::Point p;

			p.x = -point[0];
			p.y = point[1];
			p.z = point[2];
			marker.points.push_back(p);
		}

		len_pub.publish(len_msg);
		vis_pub.publish(marker);
	}
	else
	{
		std::cout << "Path planning error: No solution found" << std::endl;
		
		// Publish "impossible path" length
		len_msg.data = -1;
		len_pub.publish(len_msg);
	}
}

void octomapCallback(const octomap_msgs::Octomap &msg)
{
	// convert octree to collision object
	octomap::OcTree* tree_oct = dynamic_cast<octomap::OcTree*>(octomap_msgs::msgToMap(msg));

	fcl::OcTree* tree = new fcl::OcTree(std::shared_ptr<const octomap::OcTree>(tree_oct));
	fcl::CollisionObject temp((std::shared_ptr<fcl::CollisionGeometry>(tree)));
	treeObj = temp;
	octomap_received = true;
}

void statusCallback(const std_msgs::Int8 status)
{
	// function to activate path planning 
	if ((status.data == 1) && (!path_computed) && (octomap_received))
	{
		path_computed = true;
		plan();
	}

}

/* Main function */
int main(int argc, char **argv)
{
	ros::init(argc, argv, "path_planning");
	ros::NodeHandle nh;
	ros::Subscriber octree_sub = nh.subscribe(INPUT_TOPIC_MAP, 1, octomapCallback);
	ros::Subscriber status_sub = nh.subscribe(INPUT_TOPIC_EPM_STATUS, 1, statusCallback);

	len_pub = nh.advertise<std_msgs::Float32>(OUTPUT_TOPIC_PATH_LENGTH,5);
	traj_pub = nh.advertise<std_msgs::Float64MultiArray>(OUTPUT_TOPIC_PATH,50);
	vis_pub = nh.advertise<visualization_msgs::Marker>(OUTPUT_TOPIC_VIS,5);

	ECost_pub = nh.advertise<std_msgs::Float32>("/ECostTopic",5);
	MWCost_pub = nh.advertise<std_msgs::Float32>("/MWCostTopic",5);
	SCICost_pub = nh.advertise<std_msgs::Float32>("/SCICostTopic",5);

	std::cout << "OMPL version: " << OMPL_VERSION << std::endl;

	min_aerial_height = std::stod(argv[1]);

	std::cout << (argv[1]) << " TOP LINE" << std::endl;

	ros::spin();

	return 0;
}

//std_msgs/Float64MultiArray

/* ---------------------------------------------------------------------------- 
   -------------------- Path Planning Module (EPM) - ARAV --------------------- 
   ----------------------------------------------------------------------------
   ------------------------ Author : Joan Bessa Sanz -------------------------- 
   ------------- E-mail : joan.bessa-sanz@student.isae-supaero.fr ------------- 
   ----------- (c) Copyright 2021. Joan Bessa. All Rights Reserved ------------  
   ---------------------------------------------------------------------------- */
