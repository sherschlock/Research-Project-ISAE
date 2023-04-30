#include <ros/ros.h>
#include <octomap_msgs/Octomap.h>
#include <octomap_msgs/conversions.h>
#include <octomap_ros/conversions.h>
#include <octomap/octomap.h>
#include <pathfinder/astar_planner.hpp>
#include <std_msgs/String.h>
#include <fstream>
#include <sstream>

class MyPlanner {
public:
  MyPlanner() : nh_("~"), astar_planner_(safe_obstacle_distance, euclidean_distance_cutoff, submap_distance, planning_tree_resolution, distance_penalty,
                                        greedy_penalty, timeout_threshold, max_waypoint_distance, min_altitude, max_altitude, unknown_is_occupied, bv) {

    octomap_sub_ = nh_.subscribe<octomap_msgs::Octomap>("/arav/octomap_binary", 1, &MyPlanner::octomapCallback, this);
  }

  void octomapCallback(const octomap_msgs::Octomap::ConstPtr& msg) {
    // Convert octomap message to octomap::OcTree

    // octomap::OcTree* octree = dynamic_cast<octomap::OcTree*>(octomap_msgs::msgToMap(*msg));

    // The octomap message (*msg) is converted to an Octomap data structure which is a shared pointer of type AbstractOcTree.
    // It is then dynamically cast into a shared pointer of another type, namely, OcTree.
    
    std::shared_ptr<octomap::AbstractOcTree> octree_ptr(octomap_msgs::msgToMap(*msg));
    std::shared_ptr<octomap::OcTree> octree = std::dynamic_pointer_cast<octomap::OcTree>(octree_ptr);

    octomap::point3d BBXBounds = octree->getBBXBounds();
    std::cout << "Size of the Octomap: " << BBXBounds << std::endl;
    
    // octomap::point3d BBXCenter = octree->getBBXCenter();
    // std::cout << "BBXCenter: " << BBXCenter << std::endl;
    
    // octomap::point3d BBXMax = octree->getBBXMax();
    // std::cout << "BBXMax: " << BBXMax << std::endl;

    // octomap::point3d BBXMin = octree->getBBXMin();
    // std::cout << "BBXMin: " << BBXMin << std::endl;

    // Plan a path using A* planner
    const octomap::point3d start(0, 0, 0.1);
    const octomap::point3d goal(10, 0, 0.1);
    const double timeout = 5;
    std::pair<std::vector<octomap::point3d>, bool> waypoints = astar_planner_.findPath(start, goal, octree, timeout);

    // delete octree;
  }

  void octomapCallback(const octomap_msgs::Octomap::ConstPtr& msg) {

      // Convert octomap message to octomap::OcTree
      
      std::shared_ptr<octomap::AbstractOcTree> octree_ptr(octomap_msgs::msgToMap(*msg));
      std::shared_ptr<octomap::OcTree> octree = std::dynamic_pointer_cast<octomap::OcTree>(octree_ptr);

      // Plan a path using A* planner
      const octomap::point3d start(0, 0, 0.1);
      const octomap::point3d goal(10, 0, 0.1);
      const double timeout = 5;
      std::pair<std::vector<octomap::point3d>, bool> waypoints = astar_planner_.findPath(start, goal, octree, timeout);
  }
  
private:
  ros::NodeHandle nh_;
  ros::Subscriber octomap_sub_;
  double safe_obstacle_distance = 0.0001; // Obstacles are inflated by this amount
  double euclidean_distance_cutoff = 0.1;
  double submap_distance = 10; 
  double planning_tree_resolution = 1;
  double distance_penalty = 1;
  double greedy_penalty = 1;
  double timeout_threshold = 1;
  double max_waypoint_distance = 5;
  double min_altitude = 1;
  double max_altitude = 5;
  bool unknown_is_occupied = true;
  std::shared_ptr<mrs_lib::BatchVisualizer> bv;
  pathfinder::AstarPlanner astar_planner_;
};

int main(int argc, char** argv) {
  ros::init(argc, argv, "path_planning");
  MyPlanner planner;
  ros::spin();
  return 0;
}