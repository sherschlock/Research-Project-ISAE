/* includes //{ */

#include <memory>
#include <ros/init.h>
#include <ros/ros.h>
#include <ros/package.h>
#include <nodelet/nodelet.h>

#include <octomap/OcTree.h>

#include <octomap_msgs/Octomap.h>
#include <octomap_msgs/conversions.h>

#include <algorithm>
#include <chrono>
#include <cmath>
#include <iostream>
#include <numeric>

#include <mrs_lib/attitude_converter.h>
#include <mrs_lib/batch_visualizer.h>
#include <mrs_lib/param_loader.h>
#include <mrs_lib/subscribe_handler.h>
#include <mrs_lib/mutex.h>
#include <mrs_lib/scope_timer.h>
#include <mrs_lib/service_client_handler.h>
#include <mrs_lib/transformer.h>
#include <mrs_lib/geometry/misc.h>
#include <mrs_lib/geometry/cyclic.h>

#include <mrs_msgs/PositionCommand.h>
#include <mrs_msgs/Vec4.h>
#include <mrs_msgs/ReferenceStampedSrv.h>
#include <mrs_msgs/GetPathSrv.h>
#include <mrs_msgs/String.h>
#include <mrs_msgs/MpcPredictionFullState.h>
#include <mrs_msgs/TrajectoryReferenceSrv.h>
#include <mrs_msgs/ControlManagerDiagnostics.h>
#include <mrs_msgs/DynamicsConstraints.h>
#include <mrs_msgs/TrajectoryReference.h>
#include <mrs_msgs/PathfinderDiagnostics.h>

#include <std_srvs/Trigger.h>

#include <pathfinder/astar_planner.hpp>
#include <mrs_subt_planning_lib/astar_planner.h>

//}

namespace pathfinder
{

/* defines //{ */

// Different states of the algorithm

typedef enum
{
  STATE_IDLE,
  STATE_PLANNING,
  STATE_MOVING,
} State_t;

const std::string _state_names_[] = {"IDLE", "PLANNING", "MOVING"};

using OcTree_t            = octomap::OcTree;
using OcTreePtr_t         = std::shared_ptr<octomap::OcTree>;
using OcTreeMsgConstPtr_t = octomap_msgs::OctomapConstPtr;

//}

/* class Pathfinder //{ */

class Pathfinder : public nodelet::Nodelet {

public:
  virtual void onInit();

private:
  ros::NodeHandle nh_;

  bool              is_initialized_ = false;
  std::atomic<bool> ready_to_plan_  = false;
  std::string       _uav_name_;

  // params
  double _euclidean_distance_cutoff_;
  double _safe_obstacle_distance_;
  double _distance_penalty_;
  double _greedy_penalty_;
  double _timeout_threshold_;
  double _time_for_trajectory_generator_;
  double _max_waypoint_distance_;
  double _min_altitude_;
  double _max_altitude_;
  double _rate_main_timer_;
  double _rate_diagnostics_timer_;
  double _rate_future_check_timer_;
  double _replan_after_;
  double _min_path_length_;
  bool   _unknown_is_occupied_;
  bool   _use_subt_planner_;
  bool   _subt_make_path_straight_;
  bool   _subt_apply_postprocessing_;
  bool   _subt_apply_pruning_;
  bool   _subt_debug_info_;
  double _subt_clearing_dist_;
  double _subt_pruning_dist_;
  double _subt_bbx_horizontal_;
  double _subt_bbx_vertical_;
  double _subt_processing_safe_dist_;
  double _subt_admissibility_;
  int    _subt_processing_max_iterations_;
  bool   _subt_processing_horizontal_neighbors_only_;
  double _subt_processing_z_diff_tolerance_;
  bool   _subt_processing_fix_goal_point_;
  int    _subt_shortening_window_size_;
  int    _subt_shortening_distance_;
  double _distance_transform_distance_;
  double _trajectory_generation_input_length_;
  bool   _trajectory_generation_relax_heading_;
  bool   _trajectory_generation_use_heading_;

  bool   _turn_in_flight_direction_;
  double _heading_offset_;
  double _max_segment_length_for_heading_sampling_;  // TODO: fix variable name

  double planning_tree_resolution_;

  std::string octree_frame_;

// This is the variable which stores the octree

  std::shared_ptr<OcTree_t> octree_global_;
  std::mutex                mutex_octree_global_;

  // visualizer params
  double _points_scale_;
  double _lines_scale_;

  // initial condition
  octomap::point3d  initial_pos_;
  double            initial_heading_;
  std::mutex        mutex_initial_condition_;
  std::atomic<bool> got_initial_pos_;

  mrs_lib::BatchVisualizer bv_input_;
  std::mutex               mutex_bv_input_;

  std::shared_ptr<mrs_lib::BatchVisualizer> bv_planner_;
  bool                                      bv_planner_frame_set_ = false;

  mrs_lib::BatchVisualizer bv_processed_;
  std::mutex               mutex_bv_processed_;

  // subscribers
  mrs_lib::SubscribeHandler<mrs_msgs::PositionCommand>           sh_position_cmd_;
  mrs_lib::SubscribeHandler<octomap_msgs::Octomap>               sh_octomap_;
  mrs_lib::SubscribeHandler<mrs_msgs::MpcPredictionFullState>    sh_mpc_prediction_;
  mrs_lib::SubscribeHandler<mrs_msgs::ControlManagerDiagnostics> sh_control_manager_diag_;
  mrs_lib::SubscribeHandler<mrs_msgs::DynamicsConstraints>       sh_constraints_;

  // publishers
  ros::Publisher pub_diagnostics_;

  // subscriber callbacks
  void callbackPositionCmd(mrs_lib::SubscribeHandler<mrs_msgs::PositionCommand>& wrp);
  void callbackOctomap(mrs_lib::SubscribeHandler<octomap_msgs::Octomap>& wrp);
  void callbackMpcPrediction(mrs_lib::SubscribeHandler<mrs_msgs::MpcPredictionFullState>& wrp);

  // service servers
  ros::ServiceServer service_server_goto_;
  ros::ServiceServer service_server_stop_;
  ros::ServiceServer service_server_reference_;
  ros::ServiceServer service_server_set_planner_;

  // service server callbacks
  bool callbackGoto([[maybe_unused]] mrs_msgs::Vec4::Request& req, mrs_msgs::Vec4::Response& res);
  bool callbackStop([[maybe_unused]] std_srvs::Trigger::Request& req, std_srvs::Trigger::Response& res);
  bool callbackReference([[maybe_unused]] mrs_msgs::ReferenceStampedSrv::Request& req, mrs_msgs::ReferenceStampedSrv::Response& res);
  bool callbackSetPlanner([[maybe_unused]] mrs_msgs::String::Request& req, mrs_msgs::String::Response& res);

  // service clients
  mrs_lib::ServiceClientHandler<mrs_msgs::GetPathSrv>             sc_get_trajectory_;
  mrs_lib::ServiceClientHandler<mrs_msgs::TrajectoryReferenceSrv> sc_trajectory_reference_;
  mrs_lib::ServiceClientHandler<std_srvs::Trigger>                sc_hover_;

  // timers
  ros::Timer timer_main_;
  void       timerMain([[maybe_unused]] const ros::TimerEvent& evt);

  ros::Timer timer_diagnostics_;
  void       timerDiagnostics([[maybe_unused]] const ros::TimerEvent& evt);

  ros::Timer timer_future_check_;
  void       timerFutureCheck([[maybe_unused]] const ros::TimerEvent& evt);

  // diagnostics
  mrs_msgs::PathfinderDiagnostics diagnostics_;
  std::mutex                      mutex_diagnostics_;

  // timeouts
  void timeoutOctomap(const std::string& topic, const ros::Time& last_msg, [[maybe_unused]] const int n_pubs);
  void timeoutPositionCmd(const std::string& topic, const ros::Time& last_msg, [[maybe_unused]] const int n_pubs);
  void timeoutMpcPrediction(const std::string& topic, const ros::Time& last_msg, [[maybe_unused]] const int n_pubs);
  void timeoutControlManagerDiag(const std::string& topic, const ros::Time& last_msg, [[maybe_unused]] const int n_pubs);

  // transformer
  std::unique_ptr<mrs_lib::Transformer> transformer_;

  std::string current_control_frame_;
  std::mutex  mutex_current_control_frame_;

  // planning
  std::atomic<int> replanning_counter_ = 0;
  ros::Time        time_last_plan_;

  // state machine
  std::atomic<State_t> state_;
  void                 changeState(const State_t new_state);

  mrs_msgs::Reference user_goal_;
  std::mutex          mutex_user_goal_;

  octomap::point3d internal_goal_;

  std::atomic<bool> set_timepoints_ = false;

  ros::Time replanning_start_timepoint_;
  ros::Time replanning_end_timepoint_;

  // unused
  octomap::point3d replanning_point_;
  std::mutex       mutex_replanning_point_;

  // routines
  void setReplanningPoint(const mrs_msgs::TrajectoryReference& traj);

  std::vector<double> estimateSegmentTimes(const std::vector<Eigen::Vector4d>& vertices, const bool use_heading);

  std::optional<OcTreePtr_t> msgToMap(const octomap_msgs::OctomapConstPtr octomap);

  /**
   * @brief returns planning initial condition for a given future time based on the MPC prediction horizon
   *
   * @param time
   *
   * @return x, y, z, heading reference
   */
  std::optional<mrs_msgs::ReferenceStamped> getInitialCondition(const ros::Time time);

  bool copyLocalMap(std::shared_ptr<OcTree_t>& from, std::shared_ptr<OcTree_t>& to);

  octomap::OcTreeNode* touchNode(std::shared_ptr<OcTree_t>& octree, const octomap::OcTreeKey& key, unsigned int target_depth);

  octomap::OcTreeNode* touchNodeRecurs(std::shared_ptr<OcTree_t>& octree, octomap::OcTreeNode* node, const octomap::OcTreeKey& key, unsigned int depth,
                                       unsigned int max_depth);

  /* std::shared_ptr<octomap::OcTree> convertOcTreeToBinary(std::shared_ptr<octomap::OcTree> tree, double resolution, double fractor); */

  void hover(void);
};

//}

/* onInit() //{ */

void Pathfinder::onInit() {

  nh_ = nodelet::Nodelet::getMTPrivateNodeHandle();

  ros::Time::waitForValid();

  ROS_INFO("[Pathfinder]: initializing");

  mrs_lib::ParamLoader param_loader(nh_, "Pathfinder");

  param_loader.loadParam("uav_name", _uav_name_);
  param_loader.loadParam("main_timer/rate", _rate_main_timer_);
  param_loader.loadParam("diagnostics_timer/rate", _rate_diagnostics_timer_);
  param_loader.loadParam("future_check_timer/rate", _rate_future_check_timer_);

  param_loader.loadParam("euclidean_distance_cutoff", _euclidean_distance_cutoff_);
  param_loader.loadParam("safe_obstacle_distance", _safe_obstacle_distance_);
  param_loader.loadParam("distance_penalty", _distance_penalty_);
  param_loader.loadParam("greedy_penalty", _greedy_penalty_);
  param_loader.loadParam("planning_tree/resolution", planning_tree_resolution_);
  param_loader.loadParam("unknown_is_occupied", _unknown_is_occupied_);
  param_loader.loadParam("distance_transform/submap_distance", _distance_transform_distance_);
  param_loader.loadParam("points_scale", _points_scale_);
  param_loader.loadParam("lines_scale", _lines_scale_);
  param_loader.loadParam("max_waypoint_distance", _max_waypoint_distance_);
  param_loader.loadParam("min_altitude", _min_altitude_);
  param_loader.loadParam("max_altitude", _max_altitude_);
  param_loader.loadParam("timeout_threshold", _timeout_threshold_);
  param_loader.loadParam("time_for_trajectory_generator", _time_for_trajectory_generator_);
  param_loader.loadParam("replan_after", _replan_after_);
  param_loader.loadParam("min_path_length", _min_path_length_);
  param_loader.loadParam("trajectory_generator/input_trajectory_length", _trajectory_generation_input_length_);
  param_loader.loadParam("trajectory_generator/use_heading", _trajectory_generation_use_heading_);
  param_loader.loadParam("trajectory_generator/relax_heading", _trajectory_generation_relax_heading_);
  param_loader.loadParam("trajectory_generator/turn_in_flight_direction", _turn_in_flight_direction_);
  param_loader.loadParam("trajectory_generator/heading_offset", _heading_offset_);
  param_loader.loadParam("trajectory_generator/max_segment_length_heading", _max_segment_length_for_heading_sampling_);
  param_loader.loadParam("subt_planner/use", _use_subt_planner_);
  param_loader.loadParam("subt_planner/make_path_straight", _subt_make_path_straight_);
  param_loader.loadParam("subt_planner/apply_postprocessing", _subt_apply_postprocessing_);
  param_loader.loadParam("subt_planner/apply_pruning", _subt_apply_pruning_);
  param_loader.loadParam("subt_planner/debug_info", _subt_debug_info_);
  param_loader.loadParam("subt_planner/clearing_dist", _subt_clearing_dist_);
  param_loader.loadParam("subt_planner/pruning_dist", _subt_pruning_dist_);
  param_loader.loadParam("subt_planner/admissibility", _subt_admissibility_);
  param_loader.loadParam("subt_planner/planning_tree/bounding_box/horizontal", _subt_bbx_horizontal_);
  param_loader.loadParam("subt_planner/planning_tree/bounding_box/vertical", _subt_bbx_vertical_);
  param_loader.loadParam("subt_planner/postprocessing/safe_dist", _subt_processing_safe_dist_);
  param_loader.loadParam("subt_planner/postprocessing/max_iteration", _subt_processing_max_iterations_);
  param_loader.loadParam("subt_planner/postprocessing/horizontal_neighbors_only", _subt_processing_horizontal_neighbors_only_);
  param_loader.loadParam("subt_planner/postprocessing/z_diff_tolerance", _subt_processing_z_diff_tolerance_);
  param_loader.loadParam("subt_planner/postprocessing/fix_goal_point", _subt_processing_fix_goal_point_);
  param_loader.loadParam("subt_planner/shortening/window_size", _subt_shortening_window_size_);
  param_loader.loadParam("subt_planner/shortening/distance", _subt_shortening_distance_);

  if (!param_loader.loadedSuccessfully()) {
    ROS_ERROR("[Pathfinder]: could not load all parameters");
    ros::shutdown();
  }

  octree_global_ = nullptr;

  // | ---------------------- state machine --------------------- |

  state_ = STATE_IDLE;

  // | ----------------------- publishers ----------------------- |

  pub_diagnostics_ = nh_.advertise<mrs_msgs::PathfinderDiagnostics>("diagnostics_out", 1);

  // | ----------------------- subscribers ---------------------- |

  mrs_lib::SubscribeHandlerOptions shopts;
  shopts.nh                 = nh_;
  shopts.node_name          = "Pathfinder";
  shopts.no_message_timeout = mrs_lib::no_timeout;
  shopts.threadsafe         = true;
  shopts.autostart          = true;
  shopts.queue_size         = 1;
  shopts.transport_hints    = ros::TransportHints().tcpNoDelay();

  sh_position_cmd_ = mrs_lib::SubscribeHandler<mrs_msgs::PositionCommand>(shopts, "position_cmd_in", ros::Duration(3.0), &Pathfinder::timeoutPositionCmd, this,
                                                                          &Pathfinder::callbackPositionCmd, this);
  sh_octomap_      = mrs_lib::SubscribeHandler<octomap_msgs::Octomap>(shopts, "octomap_in", ros::Duration(5.0), &Pathfinder::timeoutOctomap, this,
                                                                 &Pathfinder::callbackOctomap, this);

  sh_mpc_prediction_ = mrs_lib::SubscribeHandler<mrs_msgs::MpcPredictionFullState>(
      shopts, "mpc_prediction_in", ros::Duration(3.0), &Pathfinder::timeoutMpcPrediction, this, &Pathfinder::callbackMpcPrediction, this);

  sh_control_manager_diag_ = mrs_lib::SubscribeHandler<mrs_msgs::ControlManagerDiagnostics>(shopts, "control_manager_diag_in", ros::Duration(3.0),
                                                                                            &Pathfinder::timeoutControlManagerDiag, this);

  sh_constraints_ = mrs_lib::SubscribeHandler<mrs_msgs::DynamicsConstraints>(shopts, "constraints_in");

  // | --------------------- service clients -------------------- |

  sc_get_trajectory_       = mrs_lib::ServiceClientHandler<mrs_msgs::GetPathSrv>(nh_, "trajectory_generation_out");
  sc_trajectory_reference_ = mrs_lib::ServiceClientHandler<mrs_msgs::TrajectoryReferenceSrv>(nh_, "trajectory_reference_out");
  sc_hover_                = mrs_lib::ServiceClientHandler<std_srvs::Trigger>(nh_, "hover_out");

  // | --------------------- service servers -------------------- |

  service_server_goto_        = nh_.advertiseService("goto_in", &Pathfinder::callbackGoto, this);
  service_server_stop_        = nh_.advertiseService("stop_in", &Pathfinder::callbackStop, this);
  service_server_reference_   = nh_.advertiseService("reference_in", &Pathfinder::callbackReference, this);
  service_server_set_planner_ = nh_.advertiseService("planner_type_in", &Pathfinder::callbackSetPlanner, this);

  // | ----------------------- transformer ---------------------- |

  transformer_ = std::make_unique<mrs_lib::Transformer>("Pathfinder");
  transformer_->setDefaultPrefix(_uav_name_);
  transformer_->retryLookupNewest(true);

  // | -------------------- batch visualiuzer ------------------- |

  bv_input_ = mrs_lib::BatchVisualizer(nh_, "visualize_input", "");
  bv_input_.setPointsScale(_points_scale_);
  bv_input_.setLinesScale(_lines_scale_);

  bv_planner_ = std::make_shared<mrs_lib::BatchVisualizer>(nh_, "visualize_planner", "");
  bv_planner_->setPointsScale(_points_scale_);
  bv_planner_->setLinesScale(_lines_scale_);

  bv_processed_ = mrs_lib::BatchVisualizer(nh_, "visualize_processed", "");
  bv_processed_.setPointsScale(_points_scale_);
  bv_processed_.setLinesScale(_lines_scale_);

  // | ------------------------- timers ------------------------- |

  timer_main_         = nh_.createTimer(ros::Rate(_rate_main_timer_), &Pathfinder::timerMain, this);
  timer_future_check_ = nh_.createTimer(ros::Rate(_rate_future_check_timer_), &Pathfinder::timerFutureCheck, this);
  timer_diagnostics_  = nh_.createTimer(ros::Rate(_rate_diagnostics_timer_), &Pathfinder::timerDiagnostics, this);


  // | --------------------- finish the init -------------------- |

  is_initialized_ = true;

  ROS_INFO("[Pathfinder]: initialized");
}

//}

// | ------------------------ callbacks ----------------------- |

/* callbackPositionCmd() //{ */

void Pathfinder::callbackPositionCmd(mrs_lib::SubscribeHandler<mrs_msgs::PositionCommand>& wrp) {

  if (!is_initialized_) {
    return;
  }

  ROS_INFO_ONCE("[Pathfinder]: getting position cmd");
}

//}

/* timeoutPositionCmd() //{ */

void Pathfinder::timeoutPositionCmd(const std::string& topic, const ros::Time& last_msg, [[maybe_unused]] const int n_pubs) {

  if (!is_initialized_) {
    return;
  }

  if (!sh_position_cmd_.hasMsg()) {
    return;
  }

  if (state_ != STATE_IDLE) {

    ROS_WARN_THROTTLE(1.0, "[Pathfinder]: position cmd timeouted!");

    ready_to_plan_ = false;

    changeState(STATE_IDLE);

    hover();
  }
}

//}

/* callbackOctomap() //{ */

void Pathfinder::callbackOctomap(mrs_lib::SubscribeHandler<octomap_msgs::Octomap>& wrp) {

  if (!is_initialized_) {
    return;
  }

  ROS_INFO_ONCE("[Pathfinder]: getting octomap");

  std::optional<OcTreePtr_t> octree_local = msgToMap(wrp.getMsg());

  if (!octree_local) {
    ROS_WARN_THROTTLE(1.0, "[Pathfinder]: received map is empty!");
    return;
  }

  {
    std::scoped_lock lock(mutex_octree_global_);

    if (octree_global_ == nullptr) {
      double resolution = octree_local->get()->getResolution();
      ROS_INFO("[Pathfinder]: Creating global octree with resolution %.3f", resolution);
      octree_global_ = std::make_shared<OcTree_t>(resolution);
    }

    copyLocalMap(*octree_local, octree_global_);
    octree_frame_ = wrp.getMsg()->header.frame_id;
  }

  if (!bv_planner_frame_set_) {
    bv_planner_->setParentFrame(wrp.getMsg()->header.frame_id);
    bv_planner_frame_set_ = true;
  }

  {
    std::scoped_lock lock(mutex_bv_input_);

    bv_input_.setParentFrame(wrp.getMsg()->header.frame_id);
  }

  {
    std::scoped_lock lock(mutex_bv_processed_);

    bv_processed_.setParentFrame(wrp.getMsg()->header.frame_id);
  }
}

//}

/* timeoutOctomap() //{ */

void Pathfinder::timeoutOctomap(const std::string& topic, const ros::Time& last_msg, [[maybe_unused]] const int n_pubs) {

  if (!is_initialized_) {
    return;
  }

  if (!sh_octomap_.hasMsg()) {
    return;
  }

  if (state_ != STATE_IDLE) {

    ROS_WARN_THROTTLE(1.0, "[Pathfinder]: octomap timeouted!");

    ready_to_plan_ = false;

    changeState(STATE_IDLE);

    hover();
  }
}

//}

/* callbackMpcPrediction() //{ */

void Pathfinder::callbackMpcPrediction(mrs_lib::SubscribeHandler<mrs_msgs::MpcPredictionFullState>& wrp) {

  if (!is_initialized_) {
    return;
  }

  ROS_INFO_ONCE("[Pathfinder]: getting mpc prediction");
}

//}

/* timeoutMpcPrediction() //{ */

void Pathfinder::timeoutMpcPrediction(const std::string& topic, const ros::Time& last_msg, [[maybe_unused]] const int n_pubs) {

  if (!is_initialized_) {
    return;
  }

  if (!sh_mpc_prediction_.hasMsg()) {
    return;
  }

  if (state_ != STATE_IDLE) {

    ROS_WARN_THROTTLE(1.0, "[Pathfinder]: MPC prediction timeouted!");

    ready_to_plan_ = false;

    changeState(STATE_IDLE);

    hover();
  }
}

//}

/* timeoutControlManagerDiag() //{ */

void Pathfinder::timeoutControlManagerDiag(const std::string& topic, const ros::Time& last_msg, [[maybe_unused]] const int n_pubs) {

  if (!is_initialized_) {
    return;
  }

  if (!sh_mpc_prediction_.hasMsg()) {
    return;
  }

  if (state_ != STATE_IDLE) {

    ROS_WARN_THROTTLE(1.0, "[Pathfinder]: Control manager diag timeouted!");

    ready_to_plan_ = false;

    changeState(STATE_IDLE);

    hover();
  }
}

//}

/* callbackStop() //{ */

bool Pathfinder::callbackStop([[maybe_unused]] std_srvs::Trigger::Request& req, std_srvs::Trigger::Response& res) {

  if (!is_initialized_) {
    return false;
  }

  if (!ready_to_plan_) {
    std::stringstream ss;
    ss << "not ready to plan, missing data";

    ROS_ERROR_STREAM_THROTTLE(0.5, "[Pathfinder]: " << ss.str());

    res.success = false;
    res.message = ss.str();
    return true;
  }
  changeState(STATE_IDLE);
  hover();

  std::stringstream ss;
  ss << "Stopping by request";

  ROS_ERROR_STREAM_THROTTLE(0.5, "[Pathfinder]: " << ss.str());
  res.success = true;
  res.message = ss.str();
  return true;

}

//}

/* callbackGoto() //{ */

bool Pathfinder::callbackGoto([[maybe_unused]] mrs_msgs::Vec4::Request& req, mrs_msgs::Vec4::Response& res) {

  /* prerequisities //{ */

  if (!is_initialized_) {
    return false;
  }

  if (!ready_to_plan_) {
    std::stringstream ss;
    ss << "not ready to plan, missing data";

    ROS_ERROR_STREAM_THROTTLE(0.5, "[Pathfinder]: " << ss.str());

    res.success = false;
    res.message = ss.str();
    return true;
  }

  //}

  // | -------- transform the reference to the map frame -------- |

  {
    mrs_msgs::PositionCommandConstPtr position_cmd = sh_position_cmd_.getMsg();

    mrs_msgs::ReferenceStamped reference;
    reference.header.frame_id = position_cmd->header.frame_id;

    reference.reference.position.x = req.goal[0];
    reference.reference.position.y = req.goal[1];
    reference.reference.position.z = req.goal[2];
    reference.reference.heading    = req.goal[3];

    auto result = transformer_->transformSingle(reference, octree_frame_);

    if (result) {

      std::scoped_lock lock(mutex_user_goal_);

      user_goal_ = result.value().reference;

    } else {
      std::stringstream ss;
      ss << "could not transform the reference from " << position_cmd->header.frame_id << " to " << octree_frame_;

      ROS_ERROR_STREAM("[Pathfinder]: " << ss.str());

      res.success = false;
      res.message = ss.str();
      return true;
    }
  }

  changeState(STATE_PLANNING);

  {
    std::scoped_lock lock(mutex_bv_input_, mutex_user_goal_);

    bv_input_.clearBuffers();
    bv_input_.addPoint(Eigen::Vector3d(user_goal_.position.x, user_goal_.position.y, user_goal_.position.z));
    bv_input_.publish();
  }

  res.success = true;
  res.message = "goal set";
  return true;
}

//}

/* callbackReference() //{ */

bool Pathfinder::callbackReference([[maybe_unused]] mrs_msgs::ReferenceStampedSrv::Request& req, mrs_msgs::ReferenceStampedSrv::Response& res) {

  /* prerequisities //{ */

  if (!is_initialized_) {
    return false;
  }

  if (!ready_to_plan_) {
    std::stringstream ss;
    ss << "not ready to plan, missing data";

    ROS_ERROR_STREAM_THROTTLE(0.5, "[Pathfinder]: " << ss.str());

    res.success = false;
    res.message = ss.str();
    return true;
  }

  //}

  // | -------- transform the reference to the map frame -------- |

  {
    mrs_msgs::PositionCommandConstPtr position_cmd = sh_position_cmd_.getMsg();

    mrs_msgs::ReferenceStamped reference;
    reference.header    = req.header;
    reference.reference = req.reference;

    auto result = transformer_->transformSingle(reference, octree_frame_);

    if (result) {

      std::scoped_lock lock(mutex_user_goal_);

      user_goal_ = result.value().reference;

    } else {
      std::stringstream ss;
      ss << "could not transform the reference from " << req.header.frame_id << " to " << octree_frame_;

      ROS_ERROR_STREAM("[Pathfinder]: " << ss.str());

      res.success = false;
      res.message = ss.str();
      return true;
    }
  }

  changeState(STATE_PLANNING);

  {
    std::scoped_lock lock(mutex_bv_input_, mutex_user_goal_);

    bv_input_.clearBuffers();
    bv_input_.addPoint(Eigen::Vector3d(user_goal_.position.x, user_goal_.position.y, user_goal_.position.z));
    bv_input_.publish();
  }

  res.success = true;
  res.message = "reference set";
  return true;
}

//}

/* callbackSetPlanner() //{ */

bool Pathfinder::callbackSetPlanner([[maybe_unused]] mrs_msgs::String::Request& req, mrs_msgs::String::Response& res) {

  if (!is_initialized_) {
    return false;
  }

  ROS_INFO("[Pathfinder]: Setting planner to %s requested.", req.value.c_str());
  res.success = true;

  if (req.value == "mrs") {
    _use_subt_planner_ = false;
  } else if (req.value == "subt") {
    _use_subt_planner_ = true;
  } else {
    res.success = false;
  }

  res.message = res.success ? "Planner set successfully." : "Invalid type of planner requested.";
  ROS_INFO("[Pathfinder]: %s", res.message.c_str());
  return res.success;
}

//}

// | ------------------------- timers ------------------------- |

/* timerMain() //{ */

void Pathfinder::timerMain([[maybe_unused]] const ros::TimerEvent& evt) {

  if (!is_initialized_) {
    return;
  }

  /* prerequsitioes //{ */

  const bool got_octomap              = sh_octomap_.hasMsg() && (ros::Time::now() - sh_octomap_.lastMsgTime()).toSec() < 2.0;
  const bool got_position_cmd         = sh_position_cmd_.hasMsg() && (ros::Time::now() - sh_position_cmd_.lastMsgTime()).toSec() < 2.0;
  const bool got_mpc_prediction       = sh_mpc_prediction_.hasMsg() && (ros::Time::now() - sh_mpc_prediction_.lastMsgTime()).toSec() < 2.0;
  const bool got_control_manager_diag = sh_control_manager_diag_.hasMsg() && (ros::Time::now() - sh_control_manager_diag_.lastMsgTime()).toSec() < 2.0;
  const bool got_constraints          = sh_constraints_.hasMsg() && (ros::Time::now() - sh_constraints_.lastMsgTime()).toSec() < 2.0;

  if (!got_octomap || !got_position_cmd || !got_mpc_prediction || !got_control_manager_diag || !got_constraints) {
    ROS_INFO_THROTTLE(1.0, "[Pathfinder]: waiting for data: octomap = %s, position cmd = %s, MPC prediction = %s, ControlManager diag = %s, constraints = %s",
                      got_octomap ? "TRUE" : "FALSE", got_position_cmd ? "TRUE" : "FALSE", got_mpc_prediction ? "TRUE" : "FALSE",
                      got_control_manager_diag ? "TRUE" : "FALSE", got_constraints ? "TRUE" : "FALSE");
    return;
  } else {
    ready_to_plan_ = true;
  }

  //}

  ROS_INFO_ONCE("[Pathfinder]: main timer spinning");

  const auto user_goal = mrs_lib::get_mutexed(mutex_user_goal_, user_goal_);

  const mrs_msgs::ControlManagerDiagnosticsConstPtr control_manager_diag = sh_control_manager_diag_.getMsg();
  const mrs_msgs::PositionCommandConstPtr           position_cmd         = sh_position_cmd_.getMsg();

  octomap::point3d user_goal_octpoint;
  user_goal_octpoint.x() = user_goal.position.x;
  user_goal_octpoint.y() = user_goal.position.y;
  user_goal_octpoint.z() = user_goal.position.z;

  {
    std::scoped_lock lock(mutex_diagnostics_);

    diagnostics_.header.stamp    = ros::Time::now();
    diagnostics_.header.frame_id = octree_frame_;
    diagnostics_.idle            = false;

    diagnostics_.desired_reference.x = user_goal.position.x;
    diagnostics_.desired_reference.y = user_goal.position.y;
    diagnostics_.desired_reference.z = user_goal.position.z;
  }

  switch (state_) {

      /* STATE_IDLE //{ */

    case STATE_IDLE: {

      {
        std::scoped_lock lock(mutex_diagnostics_);

        diagnostics_.idle = true;
      }

      break;
    }

      //}

      /* STATE_PLANNING //{ */

    case STATE_PLANNING: {

      if (!octree_global_->getRoot()) {

        ROS_ERROR("[Pathfinder]: don't have a map");

        changeState(STATE_IDLE);

        break;
      }

      {
        std::scoped_lock lock(mutex_diagnostics_);

        diagnostics_.idle = false;
      }

      if (replanning_counter_ >= 2) {

        ROS_ERROR("[Pathfinder]: planning failed, the uav is stuck");

        changeState(STATE_IDLE);

        break;
      }

      // get the initial condition

      double time_for_planning;

      if (control_manager_diag->tracker_status.have_goal) {
        time_for_planning = _timeout_threshold_;
      } else {
        time_for_planning = _timeout_threshold_ + pow(1.5, float(replanning_counter_));
      }

      ROS_INFO("[Pathfinder]: planning timeout %.2f s", time_for_planning);

      ros::Time init_cond_time = ros::Time::now() + ros::Duration(time_for_planning + _time_for_trajectory_generator_);

      ROS_INFO("[Pathfinder]: init cond time %.2f s", init_cond_time.toSec());

      auto initial_condition = getInitialCondition(init_cond_time);

      if (!initial_condition) {

        ROS_ERROR_THROTTLE(1.0, "[Pathfinder]: could not obtain initial condition for planning");
        hover();
        changeState(STATE_IDLE);

        break;
      }

      ROS_INFO("[Pathfinder]: init cond time stamp %.2f", initial_condition.value().header.stamp.toSec());

      octomap::point3d plan_from;
      plan_from.x() = initial_condition.value().reference.position.x;
      plan_from.y() = initial_condition.value().reference.position.y;
      plan_from.z() = initial_condition.value().reference.position.z;

      if ((plan_from - user_goal_octpoint).norm() < planning_tree_resolution_) {

        ROS_INFO_THROTTLE(1.0, "[Pathfinder]: we reached the target");
        changeState(STATE_IDLE);
        break;
      }

      std::pair<std::vector<octomap::point3d>, bool> waypoints;
      /* ros::Time                                      mct_start = ros::Time::now(); */

      if (_use_subt_planner_) {

        // | -------------------- MRS SubT planner -------------------- |
        mrs_subt_planning::AstarPlanner subt_planner = mrs_subt_planning::AstarPlanner();

        subt_planner.initialize(true, time_for_planning, _safe_obstacle_distance_, _subt_clearing_dist_, _min_altitude_, _max_altitude_, _subt_debug_info_,
                                bv_planner_, false);
        subt_planner.setAstarAdmissibility(_subt_admissibility_);

        ROS_INFO("[Pathfinder]: Calling find path method.");
        waypoints = subt_planner.findPath(plan_from, user_goal_octpoint, octree_global_, _subt_make_path_straight_, _subt_apply_postprocessing_,
                                          _subt_bbx_horizontal_, _subt_bbx_vertical_, _subt_processing_safe_dist_, _subt_processing_max_iterations_,
                                          _subt_processing_horizontal_neighbors_only_, _subt_processing_z_diff_tolerance_, _subt_shortening_window_size_,
                                          _subt_shortening_distance_, _subt_apply_pruning_, _subt_pruning_dist_);

      } else {

        ROS_INFO("[Pathfinder]: Initializing astar planner.");
        pathfinder::AstarPlanner planner = pathfinder::AstarPlanner(
            _safe_obstacle_distance_, _euclidean_distance_cutoff_, _distance_transform_distance_, planning_tree_resolution_, _distance_penalty_,
            _greedy_penalty_, _timeout_threshold_, _max_waypoint_distance_, _min_altitude_, _max_altitude_, _unknown_is_occupied_, bv_planner_);

        ROS_INFO("[Pathfinder]: Calling find path method.");
        waypoints = planner.findPath(plan_from, user_goal_octpoint, octree_global_, time_for_planning);
      }


      // path is complete
      if (waypoints.second) {

        replanning_counter_ = 0;

        waypoints.first.push_back(user_goal_octpoint);

      } else {

        ROS_INFO("[Pathfinder]: path length: %d", (int)waypoints.first.size());
        if (waypoints.first.size() < 2) {

          ROS_WARN("[Pathfinder]: path not found");

          replanning_counter_++;

          break;
        }

        double front_x = waypoints.first.front().x();
        double front_y = waypoints.first.front().y();
        double front_z = waypoints.first.front().z();

        double back_x = waypoints.first.back().x();
        double back_y = waypoints.first.back().y();
        double back_z = waypoints.first.back().z();

        double path_start_end_dist = sqrt(pow(front_x - back_x, 2) + pow(front_y - back_y, 2) + pow(front_z - back_z, 2));

        if (path_start_end_dist < _min_path_length_) {

          ROS_WARN("[Pathfinder]: path too short, length: %.3f", path_start_end_dist);

          replanning_counter_++;

          changeState(STATE_PLANNING);

          break;
        }
      }

      time_last_plan_ = ros::Time::now();

      diagnostics_.best_goal.x = waypoints.first.back().x();
      diagnostics_.best_goal.y = waypoints.first.back().y();
      diagnostics_.best_goal.z = waypoints.first.back().z();

      {
        std::scoped_lock lock(mutex_initial_condition_);

        mrs_msgs::PositionCommandConstPtr position_cmd = sh_position_cmd_.getMsg();
        auto                              octree_frame = mrs_lib::get_mutexed(mutex_octree_global_, octree_frame_);

        // transform the position cmd to the map frame
        mrs_msgs::ReferenceStamped position_cmd_ref;
        position_cmd_ref.header               = position_cmd->header;
        position_cmd_ref.reference.position.x = position_cmd->position.x;
        position_cmd_ref.reference.position.y = position_cmd->position.y;
        position_cmd_ref.reference.position.z = position_cmd->position.z;
        position_cmd_ref.reference.heading    = position_cmd->heading;

        auto res = transformer_->transformSingle(position_cmd_ref, octree_frame);

        if (!res) {
          ROS_ERROR("[Pathfinder]: could not transform position cmd to the map frame");
          return;
        }

        initial_pos_.x() = res.value().reference.position.x;
        initial_pos_.y() = res.value().reference.position.y;
        initial_pos_.z() = res.value().reference.position.z;
        initial_heading_ = res.value().reference.heading;
      }

      ros::Time path_stamp = initial_condition.value().header.stamp;

      if (ros::Time::now() > path_stamp || !control_manager_diag->tracker_status.have_goal) {
        path_stamp = ros::Time(0);
      }

      ROS_INFO("[Pathfinder]: Calling path service with timestamp = %.3f at time %.3f.", path_stamp.toSec(), ros::Time::now().toSec());

      mrs_msgs::GetPathSrv srv_get_path;
      srv_get_path.request.path.header.frame_id = octree_frame_;
      srv_get_path.request.path.header.stamp    = path_stamp;
      srv_get_path.request.path.fly_now         = false;
      srv_get_path.request.path.relax_heading   = _trajectory_generation_relax_heading_;
      srv_get_path.request.path.use_heading     = _trajectory_generation_use_heading_;

      std::vector<Eigen::Vector4d> eig_waypoints;

      // create an array of Eigen waypoints
      for (auto& w : waypoints.first) {

        Eigen::Vector4d eig_waypoint;
        eig_waypoint[0] = w.x();
        eig_waypoint[1] = w.y();
        eig_waypoint[2] = w.z();
        eig_waypoint[4] = user_goal.heading;

        eig_waypoints.push_back(eig_waypoint);
      }

      std::vector<double> segment_times = estimateSegmentTimes(eig_waypoints, false);

      double cum_time = 0;
      double cum_dist = 0;
      double dx, dy;
      int    end_idx;

      for (int i = 0; i < waypoints.first.size(); i++) {

        mrs_msgs::Reference ref;
        ref.position.x = waypoints.first[i].x();
        ref.position.y = waypoints.first[i].y();
        ref.position.z = waypoints.first[i].z();

        // sample heading reference in flight direction
        if (_turn_in_flight_direction_) {

          if (i < waypoints.first.size() - 1) {  // heading in the direction of flying with prevention of fast turning due to quick changes of path directions

            cum_dist = 0.0;
            end_idx  = i + 1;
            while (cum_dist < _max_segment_length_for_heading_sampling_) {
              dx = waypoints.first[end_idx].x() - ref.position.x;
              dy = waypoints.first[end_idx].y() - ref.position.y;
              cum_dist += (waypoints.first[end_idx] - waypoints.first[end_idx - 1]).norm();
              end_idx = fmin(++end_idx, waypoints.first.size() - 1);
            }

            if (fabs(dx) > 1e-3 || fabs(dy) > 1e-3) {
              ref.heading = atan2(dy, dx) + _heading_offset_;
            } else {
              if (i > 0) {
                ref.heading = srv_get_path.request.path.points.back().heading;
              } else {
                ref.heading = initial_heading_;
              }
            }
          } else {
            if (waypoints.first.size() > 1) {
              ref.heading = srv_get_path.request.path.points.back().heading;
            } else {
              ref.heading = initial_heading_;
            }
          }
        } else {

          ref.heading = user_goal.heading;
        }

        if (i > 0) {
          double waypoint_dist = (waypoints.first[i] - waypoints.first[i - 1]).norm();
          if (waypoint_dist > _max_segment_length_for_heading_sampling_) {
            mrs_msgs::Reference inter_ref;
            inter_ref.position.x =
                waypoints.first[i - 1].x() + (waypoints.first[i].x() - waypoints.first[i - 1].x()) / waypoint_dist * _max_segment_length_for_heading_sampling_;
            inter_ref.position.y =
                waypoints.first[i - 1].y() + (waypoints.first[i].y() - waypoints.first[i - 1].y()) / waypoint_dist * _max_segment_length_for_heading_sampling_;
            inter_ref.position.z =
                waypoints.first[i - 1].z() + (waypoints.first[i].z() - waypoints.first[i - 1].z()) / waypoint_dist * _max_segment_length_for_heading_sampling_;
            inter_ref.heading = ref.heading;
            srv_get_path.request.path.points.push_back(inter_ref);
            ROS_INFO("[Pathfinder]: TG inter input point %02d: [%.2f, %.2f, %.2f, %.2f]", i, inter_ref.position.x, inter_ref.position.y, inter_ref.position.z,
                     inter_ref.heading);
          }
        }

        ROS_INFO("[Pathfinder]: TG input point %02d: [%.2f, %.2f, %.2f, %.2f]", i, ref.position.x, ref.position.y, ref.position.z, ref.heading);
        srv_get_path.request.path.points.push_back(ref);

        cum_time += segment_times[i];

        if (i > 1 && cum_time > _trajectory_generation_input_length_) {
          ROS_INFO("[Pathfinder]: cutting path in waypoint %d out of %d", i, int(waypoints.first.size()));
          break;
        }
      }

      ROS_INFO("[Pathfinder]: calling trajectory generation");

      {
        bool success = sc_get_trajectory_.call(srv_get_path);

        if (!success) {
          ROS_ERROR("[Pathfinder]: service call for trajectory failed");
          break;
        } else {
          if (!srv_get_path.response.success) {
            ROS_ERROR("[Pathfinder]: service call for trajectory failed: '%s'", srv_get_path.response.message.c_str());
            break;
          }
        }
      }

      {
        std::scoped_lock lock(mutex_bv_processed_);

        bv_processed_.clearBuffers();
        for (auto& p : srv_get_path.response.trajectory.points) {
          auto v = Eigen::Vector3d(p.position.x, p.position.y, p.position.z);
          bv_processed_.addPoint(v, 0, 1, 0, 1);
        }
        bv_processed_.publish();
      }

      auto trajectory = srv_get_path.response.trajectory;

      // check if the trajectory is safe
      for (int i = 0; i < trajectory.points.size() - 1; i++) {
        octomap::point3d point1(trajectory.points[i].position.x, trajectory.points[i].position.y, trajectory.points[i].position.z);
        octomap::point3d point2(trajectory.points[i + 1].position.x, trajectory.points[i + 1].position.y, trajectory.points[i + 1].position.z);

        octomap::KeyRay key_ray;

        if (octree_global_->computeRayKeys(point1, point2, key_ray)) {
          bool ray_is_cool = true;
          for (octomap::KeyRay::iterator it1 = key_ray.begin(), end = key_ray.end(); it1 != end; ++it1) {
            auto node = octree_global_->search(*it1);
            if (node && octree_global_->isNodeOccupied(node)) {
              ray_is_cool = false;
              break;
            }
          }
          if (!ray_is_cool) {
            ROS_ERROR_THROTTLE(0.1, "[Pathfinder]: trajectory check found collision with prediction horizon between %d and %d, hovering!", i, i + 1);
            replanning_counter_++;
            break;
          }
        } else {
          ROS_ERROR_THROTTLE(0.1, "[Pathfinder]: trajectory check failed, could not raytrace!");
          replanning_counter_++;
          break;
        }
      }

      ROS_INFO("[Pathfinder]: Setting replanning point");
      setReplanningPoint(trajectory);
      set_timepoints_ = true;

      ROS_INFO("[Pathfinder]: publishing trajectory reference");

      mrs_msgs::TrajectoryReferenceSrv srv_trajectory_reference;
      srv_trajectory_reference.request.trajectory         = srv_get_path.response.trajectory;
      srv_trajectory_reference.request.trajectory.fly_now = true;

      int cb = 0;
      /* ROS_INFO("[Pathfinder]: Mrs trajectory generation output:"); */
      /* for (auto& point : srv_get_path.response.trajectory.points) { */
      /*   ROS_INFO("[Pathfinder]: Trajectory point %02d: [%.2f, %.2f, %.2f]", cb, point.position.x, point.position.y, point.position.z); */
      /*   cb++; */
      /* } */

      ROS_INFO("[Pathfinder]: Calling trajectory service with timestamp = %.3f at time %.3f.", srv_trajectory_reference.request.trajectory.header.stamp.toSec(),
               ros::Time::now().toSec());

      {
        bool success = sc_trajectory_reference_.call(srv_trajectory_reference);

        if (!success) {
          ROS_ERROR("[Pathfinder]: service call for trajectory reference failed");
          break;
        } else {
          if (!srv_trajectory_reference.response.success) {
            ROS_ERROR("[Pathfinder]: service call for trajectory reference failed: '%s'", srv_get_path.response.message.c_str());
            break;
          } else {
          }
        }
      }

      changeState(STATE_MOVING);
      break;
    }

      //}

      /* STATE_MOVING //{ */

    case STATE_MOVING: {

      {
        std::scoped_lock lock(mutex_diagnostics_);

        diagnostics_.idle = false;
      }

      auto initial_pos = mrs_lib::get_mutexed(mutex_initial_condition_, initial_pos_);

      double dist_to_goal = (initial_pos - user_goal_octpoint).norm();

      ROS_INFO_THROTTLE(1.0, "[Pathfinder]: dist to goal: %.2f m", dist_to_goal);

      if (dist_to_goal < 2 * planning_tree_resolution_) {
        ROS_INFO("[Pathfinder]: user goal reached");
        changeState(STATE_IDLE);
        break;
      }

      if ((ros::Time::now() - (time_last_plan_ + ros::Duration(_replan_after_))).toSec() > 0) {

        ROS_INFO("[Pathfinder]: triggering replanning");

        changeState(STATE_PLANNING);
      }

      break;
    }

      //}
  }
}

//}

/* timerFutureCheck() //{ */

void Pathfinder::timerFutureCheck([[maybe_unused]] const ros::TimerEvent& evt) {

  if (!is_initialized_) {
    return;
  }

  /* preconditions //{ */

  if (!sh_control_manager_diag_.hasMsg()) {
    return;
  }

  if (!sh_octomap_.hasMsg()) {
    return;
  }

  if (!sh_mpc_prediction_.hasMsg()) {
    return;
  }

  //}

  if (state_ == STATE_IDLE) {
    return;
  }

  ROS_INFO_ONCE("[Pathfinder]: future check timer spinning");

  // | ----------- check if the prediction is feasible ---------- |

  if (!octree_global_->getRoot()) {
    ROS_ERROR("[Pathfinder]: cannot check for collision, don't have a map");
    return;
  }

  mrs_msgs::MpcPredictionFullStateConstPtr    prediction           = sh_mpc_prediction_.getMsg();
  mrs_msgs::ControlManagerDiagnosticsConstPtr control_manager_diag = sh_control_manager_diag_.getMsg();

  if (control_manager_diag->flying_normally && control_manager_diag->tracker_status.have_goal) {

    geometry_msgs::TransformStamped tf;

    auto ret = transformer_->getTransform(prediction->header.frame_id, octree_frame_, prediction->header.stamp);

    if (!ret) {
      ROS_ERROR_THROTTLE(1.0, "[Pathfinder]: could not transform position cmd to the map frame! can not check for potential collisions!");
      return;
    }

    tf = ret.value();

    // prepare the potential future trajectory

    mrs_msgs::TrajectoryReference trajectory;
    trajectory.header.stamp    = ret.value().header.stamp;
    trajectory.header.frame_id = transformer_->frame_to(ret.value());
    trajectory.fly_now         = true;
    trajectory.use_heading     = _trajectory_generation_use_heading_;
    trajectory.dt              = 0.2;

    for (int i = 1; i < prediction->position.size(); i++) {

      mrs_msgs::ReferenceStamped pose;
      pose.header               = prediction->header;
      pose.reference.position.x = prediction->position[i].x;
      pose.reference.position.y = prediction->position[i].y;
      pose.reference.position.z = prediction->position[i].z;
      pose.reference.heading    = prediction->heading[i];

      auto transformed_pose = transformer_->transform(pose, tf);

      if (!transformed_pose) {
        ROS_ERROR_THROTTLE(1.0, "[Pathfinder]: could not transform position cmd to the map frame! can not check for potential collisions!");
        return;
      }

      trajectory.points.push_back(transformed_pose->reference);
    }

    // check if the trajectory is safe
    for (int i = 0; i < trajectory.points.size() - 1; i++) {

      octomap::point3d point1(trajectory.points[i].position.x, trajectory.points[i].position.y, trajectory.points[i].position.z);
      octomap::point3d point2(trajectory.points[i + 1].position.x, trajectory.points[i + 1].position.y, trajectory.points[i + 1].position.z);

      octomap::KeyRay key_ray;

      if (octree_global_->computeRayKeys(point1, point2, key_ray)) {

        bool ray_is_cool = true;
        for (octomap::KeyRay::iterator it1 = key_ray.begin(), end = key_ray.end(); it1 != end; ++it1) {

          auto node = octree_global_->search(*it1);
          if (node && octree_global_->isNodeOccupied(node)) {
            ray_is_cool = false;
            break;
          }
        }

        if (!ray_is_cool) {

          ROS_ERROR_THROTTLE(0.1, "[Pathfinder]: future check found collision with prediction horizon between %d and %d, hovering!", i, i + 1);
          // TODO try to do raycasting along the vector between two points of the trajectory up to a certain safety distance?

          /* // shorten the trajectory */
          /* for (int j = int(trajectory.points.size()) - 1; j >= floor(i / 2.0); j--) { */
          /*   trajectory.points.pop_back(); */
          /* } */

          /* mrs_msgs::TrajectoryReferenceSrv srv_trajectory_reference; */
          /* srv_trajectory_reference.request.trajectory = trajectory; */

          /* bool success = sc_trajectory_reference_.call(srv_trajectory_reference); */

          /* if (!success) { */
          /*   ROS_ERROR("[Pathfinder]: service call for trajectory reference failed"); */
          /*   break; */
          /* } else { */
          /*   if (!srv_trajectory_reference.response.success) { */
          /*     ROS_ERROR("[Pathfinder]: service call for trajectory reference failed: '%s'", srv_trajectory_reference.response.message.c_str()); */
          /*     break; */
          /*   } */
          /* } */

          // the trajectory directly passes through an obstacle, trigger hovering
          changeState(STATE_IDLE);
          hover();

          break;
        }

      } else {

        ROS_ERROR_THROTTLE(0.1, "[Pathfinder]: future check failed, could not raytrace!");
        hover();
        break;
      }
    }
  }
}

//}

/* timerDiagnostics() //{ */

void Pathfinder::timerDiagnostics([[maybe_unused]] const ros::TimerEvent& evt) {

  if (!is_initialized_) {
    return;
  }

  auto diagnostics = mrs_lib::get_mutexed(mutex_diagnostics_, diagnostics_);

  try {
    pub_diagnostics_.publish(diagnostics);
  }
  catch (...) {
    ROS_ERROR("exception caught during publishing topic '%s'", pub_diagnostics_.getTopic().c_str());
  }
}

//}

// | ------------------------ routines ------------------------ |

/* setReplanningPoint() //{ */

void Pathfinder::setReplanningPoint(const mrs_msgs::TrajectoryReference& traj) {

  const float x = traj.points.back().position.x;
  const float y = traj.points.back().position.y;
  const float z = traj.points.back().position.z;

  {
    std::scoped_lock lock(mutex_replanning_point_);

    replanning_point_.x() = x;
    replanning_point_.y() = y;
    replanning_point_.z() = z;
  }

  mrs_lib::geometry::Cuboid c(Eigen::Vector3d(x, y, z), Eigen::Vector3d(0.4, 0.4, 0.4), Eigen::Quaterniond::Identity());

  {
    std::scoped_lock lock(mutex_bv_input_);

    auto user_goal = mrs_lib::get_mutexed(mutex_user_goal_, user_goal_);

    bv_input_.clearBuffers();
    bv_input_.addPoint(Eigen::Vector3d(user_goal.position.x, user_goal.position.y, user_goal.position.z), 0, 1, 0, 1);
    bv_input_.addCuboid(c, 0.5, 1.0, 1.0, 0.8, true);
    bv_input_.publish();
  }
}

//}

/* changeState() //{ */

void Pathfinder::changeState(const State_t new_state) {

  const State_t old_state = state_;

  switch (new_state) {

    case STATE_PLANNING: {

      if (old_state == STATE_IDLE) {
        replanning_counter_ = 0;
      }
    }

    default: {

      break;
    }
  }

  ROS_INFO("[Pathfinder]: changing state '%s' -> '%s'", _state_names_[old_state].c_str(), _state_names_[new_state].c_str());

  state_ = new_state;
}

//}

/* getInitialCondition() //{ */

std::optional<mrs_msgs::ReferenceStamped> Pathfinder::getInitialCondition(const ros::Time des_time) {

  const mrs_msgs::MpcPredictionFullStateConstPtr prediction_full_state = sh_mpc_prediction_.getMsg();

  if ((des_time - prediction_full_state->stamps.back()).toSec() > 0) {
    ROS_ERROR_THROTTLE(1.0, "[Pathfinder]: could not obtain initial condition, the desired time is too far in the future");
    return {};
  }

  mrs_msgs::ReferenceStamped orig_reference;
  orig_reference.header = prediction_full_state->header;

  ros::Time future_time_stamp;

  for (int i = 0; i < prediction_full_state->stamps.size(); i++) {

    if ((prediction_full_state->stamps[i] - des_time).toSec() > 0) {
      orig_reference.reference.position.x = prediction_full_state->position[i].x;
      orig_reference.reference.position.y = prediction_full_state->position[i].y;
      orig_reference.reference.position.z = prediction_full_state->position[i].z;
      orig_reference.reference.heading    = prediction_full_state->heading[i];
      future_time_stamp                   = prediction_full_state->stamps[i];
      break;
    }
  }

  // transform the initial condition to the current map frame

  auto result = transformer_->transformSingle(orig_reference, octree_frame_);

  if (result) {

    mrs_msgs::ReferenceStamped transfomed_reference = result.value();
    transfomed_reference.header.stamp               = future_time_stamp;

    return transfomed_reference;

  } else {

    std::stringstream ss;
    ss << "could not transform initial condition to the map frame";

    ROS_ERROR_STREAM("[Pathfinder]: " << ss.str());
    return {};
  }
}

//}

/* hover() //{ */

void Pathfinder::hover(void) {

  ROS_INFO("[Pathfinder]: triggering hover");

  std_srvs::Trigger srv_out;

  sc_hover_.call(srv_out);
}

//}

/* estimateSegmentTimes() //{ */

std::vector<double> Pathfinder::estimateSegmentTimes(const std::vector<Eigen::Vector4d>& vertices, const bool use_heading) {

  if (vertices.size() <= 1) {
    return std::vector<double>(0);
  }

  const mrs_msgs::DynamicsConstraintsConstPtr constraints = sh_constraints_.getMsg();

  const double v_max_vertical    = std::min(constraints->vertical_ascending_speed, constraints->vertical_descending_speed);
  const double a_max_vertical    = std::min(constraints->vertical_ascending_acceleration, constraints->vertical_descending_acceleration);
  const double j_max_vertical    = std::min(constraints->vertical_ascending_jerk, constraints->vertical_descending_jerk);
  const double v_max_horizontal  = constraints->horizontal_speed;
  const double a_max_horizontal  = constraints->horizontal_acceleration;
  const double j_max_horizontal  = constraints->horizontal_jerk;
  const double heading_acc_max   = constraints->heading_acceleration;
  const double heading_speed_max = constraints->heading_speed;

  std::vector<double> segment_times;
  segment_times.reserve(vertices.size() - 1);

  // for each vertex in the path
  for (size_t i = 0; i < vertices.size() - 1; i++) {

    Eigen::Vector3d start     = vertices[i].head(3);
    Eigen::Vector3d end       = vertices[i + 1].head(3);
    double          start_hdg = vertices[i](3);
    double          end_hdg   = vertices[i + 1](3);

    double acceleration_time_1 = 0;
    double acceleration_time_2 = 0;

    double jerk_time_1 = 0;
    double jerk_time_2 = 0;

    double acc_1_coeff = 0;
    double acc_2_coeff = 0;

    double distance = (end - start).norm();

    double inclinator = atan2(end(2) - start(2), sqrt(pow(end(0) - start(0), 2) + pow(end(1) - start(1), 2)));

    double v_max, a_max, j_max;

    if (inclinator > atan2(v_max_vertical, v_max_horizontal) || inclinator < -atan2(v_max_vertical, v_max_horizontal)) {
      v_max = fabs(v_max_vertical / sin(inclinator));
    } else {
      v_max = fabs(v_max_horizontal / cos(inclinator));
    }

    if (inclinator > atan2(a_max_vertical, a_max_horizontal) || inclinator < -atan2(a_max_vertical, a_max_horizontal)) {
      a_max = fabs(a_max_vertical / sin(inclinator));
    } else {
      a_max = fabs(a_max_horizontal / cos(inclinator));
    }

    if (inclinator > atan2(j_max_vertical, j_max_horizontal) || inclinator < -atan2(j_max_vertical, j_max_horizontal)) {
      j_max = fabs(j_max_vertical / sin(inclinator));
    } else {
      j_max = fabs(j_max_horizontal / cos(inclinator));
    }

    if (i >= 1) {

      Eigen::Vector3d pre = vertices[i - 1].head(3);

      Eigen::Vector3d vec1 = start - pre;
      Eigen::Vector3d vec2 = end - start;

      vec1.normalize();
      vec2.normalize();

      double scalar = vec1.dot(vec2) < 0 ? 0.0 : vec1.dot(vec2);

      acc_1_coeff = (1 - scalar);

      acceleration_time_1 = acc_1_coeff * ((v_max / a_max) + (a_max / j_max));

      jerk_time_1 = acc_1_coeff * (2 * (a_max / j_max));
    }

    // the first vertex
    if (i == 0) {
      acc_1_coeff         = 1.0;
      acceleration_time_1 = (v_max / a_max) + (a_max / j_max);
      jerk_time_1         = (2 * (a_max / j_max));
    }

    // last vertex
    if (i == vertices.size() - 2) {
      acc_2_coeff         = 1.0;
      acceleration_time_2 = (v_max / a_max) + (a_max / j_max);
      jerk_time_2         = (2 * (a_max / j_max));
    }

    // a vertex
    if (i < vertices.size() - 2) {

      Eigen::Vector3d post = vertices[i + 2].head(3);

      Eigen::Vector3d vec1 = end - start;
      Eigen::Vector3d vec2 = post - end;

      vec1.normalize();
      vec2.normalize();

      double scalar = vec1.dot(vec2) < 0 ? 0.0 : vec1.dot(vec2);

      acc_2_coeff = (1 - scalar);

      acceleration_time_2 = acc_2_coeff * ((v_max / a_max) + (a_max / j_max));

      jerk_time_2 = acc_2_coeff * (2 * (a_max / j_max));
    }

    if (acceleration_time_1 > sqrt(2 * distance / a_max)) {
      acceleration_time_1 = sqrt(2 * distance / a_max);
    }

    if (jerk_time_1 > sqrt(2 * v_max / j_max)) {
      jerk_time_1 = sqrt(2 * v_max / j_max);
    }

    if (acceleration_time_2 > sqrt(2 * distance / a_max)) {
      acceleration_time_2 = sqrt(2 * distance / a_max);
    }

    if (jerk_time_2 > sqrt(2 * v_max / j_max)) {
      jerk_time_2 = sqrt(2 * v_max / j_max);
    }

    double max_velocity_time;

    if (((distance - (2 * (v_max * v_max) / a_max)) / v_max) < 0) {
      max_velocity_time = ((distance) / v_max);
    } else {
      max_velocity_time = ((distance - (2 * (v_max * v_max) / a_max)) / v_max);
    }

    /* double t = max_velocity_time + acceleration_time_1 + acceleration_time_2 + jerk_time_1 + jerk_time_2; */
    double t = max_velocity_time + acceleration_time_1 + acceleration_time_2;

    /* printf("segment %d, [%.2f %.2f %.2f] - > [%.2f %.2f %.2f] = %.2f\n", i, start(0), start(1), start(2), end(0), end(1), end(2), distance); */
    /* printf("segment %d time %.2f, distance %.2f, %.2f, %.2f, %.2f, vmax: %.2f, amax: %.2f, jmax: %.2f\n", i, t, distance, max_velocity_time, */
    /*        acceleration_time_1, acceleration_time_2, v_max, a_max, j_max); */

    if (t < 0.01) {
      t = 0.01;
    }

    // | ------------- check the heading rotation time ------------ |

    double angular_distance = fabs(mrs_lib::geometry::radians::dist(start_hdg, end_hdg));

    double hdg_velocity_time     = 0;
    double hdg_acceleration_time = 0;

    if (use_heading) {

      if (heading_speed_max < std::numeric_limits<float>::max() && heading_acc_max < std::numeric_limits<float>::max()) {

        if (((angular_distance - (2 * (heading_speed_max * heading_speed_max) / heading_acc_max)) / heading_speed_max) < 0) {
          hdg_velocity_time = ((angular_distance) / heading_speed_max);
        } else {
          hdg_velocity_time = ((angular_distance - (2 * (heading_speed_max * heading_speed_max) / heading_acc_max)) / heading_speed_max);
        }

        if (angular_distance > M_PI / 4) {
          hdg_acceleration_time = 2 * (heading_speed_max / heading_acc_max);
        }
      }
    }

    // what will take longer? to fix the lateral or the heading
    double heading_fix_time = 1.5 * (hdg_velocity_time + hdg_acceleration_time);

    if (heading_fix_time > t) {
      t = heading_fix_time;
    }

    segment_times.push_back(t);
  }
  return segment_times;
}

//}

/* msgToMap() //{ */

std::optional<OcTreePtr_t> Pathfinder::msgToMap(const octomap_msgs::OctomapConstPtr octomap) {

  octomap::AbstractOcTree* abstract_tree;

  if (octomap->binary) {
    abstract_tree = octomap_msgs::binaryMsgToMap(*octomap);
  } else {
    abstract_tree = octomap_msgs::fullMsgToMap(*octomap);
  }

  if (!abstract_tree) {

    ROS_WARN("[Pathfinder]: octomap message is empty!");
    return {};

  } else {

    OcTreePtr_t octree_out = OcTreePtr_t(dynamic_cast<OcTree_t*>(abstract_tree));
    return {octree_out};
  }
}

//}

/* copyLocalMap() //{ */

bool Pathfinder::copyLocalMap(std::shared_ptr<OcTree_t>& from, std::shared_ptr<OcTree_t>& to) {

  octomap::OcTreeKey minKey, maxKey;

  octomap::OcTreeNode* root = to->getRoot();

  bool got_root = root ? true : false;

  if (!got_root) {
    octomap::OcTreeKey key = to->coordToKey(0, 0, 0, to->getTreeDepth());
    to->setNodeValue(key, 1.0);
  }

  for (OcTree_t::leaf_iterator it = from->begin_leafs(from->getTreeDepth()), end = from->end_leafs(); it != end; ++it) {

    octomap::OcTreeKey   k    = it.getKey();
    octomap::OcTreeNode* node = touchNode(to, k, it.getDepth());
    node->setValue(it->getValue());
  }

  return true;
}

//}

/* touchNode() //{ */

octomap::OcTreeNode* Pathfinder::touchNode(std::shared_ptr<OcTree_t>& octree, const octomap::OcTreeKey& key, unsigned int target_depth = 0) {

  return touchNodeRecurs(octree, octree->getRoot(), key, 0, target_depth);
}

//}

/* touchNodeRecurs() //{ */

octomap::OcTreeNode* Pathfinder::touchNodeRecurs(std::shared_ptr<OcTree_t>& octree, octomap::OcTreeNode* node, const octomap::OcTreeKey& key,
                                                 unsigned int depth, unsigned int max_depth = 0) {

  assert(node);

  // follow down to last level
  if (depth < octree->getTreeDepth() && (max_depth == 0 || depth < max_depth)) {

    unsigned int pos = octomap::computeChildIdx(key, int(octree->getTreeDepth() - depth - 1));

    /* ROS_INFO("pos: %d", pos); */
    if (!octree->nodeChildExists(node, pos)) {

      // not a pruned node, create requested child
      octree->createNodeChild(node, pos);
    }

    return touchNodeRecurs(octree, octree->getNodeChild(node, pos), key, depth + 1, max_depth);
  }

  // at last level, update node, end of recursion
  else {

    return node;
  }
}

//}

/* convertOcTreeToBinary() //{ */

/* std::shared_ptr<octomap::OcTree> Pathfinder::convertOcTreeToBinary(std::shared_ptr<octomap::OcTree> tree, double resolution, double fractor) { */

/*   /1* resample the incoming map to the desired resolution //{ *1/ */

/*   std::shared_ptr<octomap::OcTree> resampled_tree = std::make_shared<octomap::OcTree>(resolution); */
/*   resampled_tree->setOccupancyThres(tree->getOccupancyThres()); */
/*   resampled_tree->setProbHit(tree->getProbHit()); */
/*   resampled_tree->setProbMiss(tree->getProbMiss()); */
/*   resampled_tree->setClampingThresMax(tree->getClampingThresMax()); */
/*   resampled_tree->setClampingThresMin(tree->getClampingThresMin()); */

/*   octomap::OcTreeKey key = resampled_tree->coordToKey(0, 0, 0, resampled_tree->getTreeDepth()); */
/*   resampled_tree->setNodeValue(key, 0.0); */

/*   for (octomap::OcTree::leaf_iterator it = tree->begin_leafs(tree->getTreeDepth() - fractor), end = tree->end_leafs(); it != end; ++it) { */

/*     octomap::OcTreeNode* orig_node = it.getNode(); */

/*     tree->eatChildren(orig_node); */

/*     auto orig_key = it.getKey(); */

/*     const unsigned int old_depth = it.getDepth(); */
/*     const unsigned int new_depth = old_depth + fractor; */

/*     auto new_key = resampled_tree->coordToKey(it.getX(), it.getY(), it.getZ()); */

/*     octomap::OcTreeNode* new_node = touchNode(resampled_tree, new_key, new_depth); */

/*     if (tree->isNodeOccupied(orig_node)) { */
/*       new_node->setLogOdds(1.0); */
/*     } else { */
/*       new_node->setLogOdds(-1.0); */
/*     } */
/*   } */

/*   resampled_tree->expand(); */

/*   /1* auto edf = euclideanDistanceTransform(resampled_tree, orig_coord, radius); *1/ */

/*   //} */

/*   std::shared_ptr<octomap::OcTree> binary_tree = std::make_shared<octomap::OcTree>(resolution); */
/*   for (auto it = resampled_tree->begin(); it != resampled_tree->end(); it++) { */
/*     octomap::OcTreeKey oc_key = resampled_tree->coordToKey(it.getCoordinate()); */
/*     if (resampled_tree->search(oc_key) != NULL) { */
/*       if (resampled_tree->isNodeOccupied(resampled_tree->search(oc_key))) { */
/*         binary_tree->setNodeValue(it.getCoordinate(), TreeValue::OCCUPIED);  // free and safe */
/*       } else { */
/*         binary_tree->setNodeValue(it.getCoordinate(), TreeValue::FREE);  // free and safe */
/*       } */
/*     } */
/*   } */

/*   return binary_tree; */
/* } */

//}

}  // namespace pathfinder

#include <pluginlib/class_list_macros.h>
PLUGINLIB_EXPORT_CLASS(pathfinder::Pathfinder, nodelet::Nodelet)
