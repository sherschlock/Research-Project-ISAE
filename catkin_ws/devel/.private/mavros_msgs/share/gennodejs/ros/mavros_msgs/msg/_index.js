
"use strict";

let EstimatorStatus = require('./EstimatorStatus.js');
let MagnetometerReporter = require('./MagnetometerReporter.js');
let RCIn = require('./RCIn.js');
let RadioStatus = require('./RadioStatus.js');
let LogEntry = require('./LogEntry.js');
let LogData = require('./LogData.js');
let CompanionProcessStatus = require('./CompanionProcessStatus.js');
let Altitude = require('./Altitude.js');
let VehicleInfo = require('./VehicleInfo.js');
let Vibration = require('./Vibration.js');
let ESCStatusItem = require('./ESCStatusItem.js');
let RTCM = require('./RTCM.js');
let BatteryStatus = require('./BatteryStatus.js');
let Param = require('./Param.js');
let HilGPS = require('./HilGPS.js');
let OverrideRCIn = require('./OverrideRCIn.js');
let Waypoint = require('./Waypoint.js');
let OpticalFlowRad = require('./OpticalFlowRad.js');
let Tunnel = require('./Tunnel.js');
let TimesyncStatus = require('./TimesyncStatus.js');
let CellularStatus = require('./CellularStatus.js');
let CommandCode = require('./CommandCode.js');
let HilSensor = require('./HilSensor.js');
let StatusText = require('./StatusText.js');
let NavControllerOutput = require('./NavControllerOutput.js');
let ESCInfo = require('./ESCInfo.js');
let ESCStatus = require('./ESCStatus.js');
let GPSINPUT = require('./GPSINPUT.js');
let VFR_HUD = require('./VFR_HUD.js');
let HomePosition = require('./HomePosition.js');
let PlayTuneV2 = require('./PlayTuneV2.js');
let WaypointReached = require('./WaypointReached.js');
let LandingTarget = require('./LandingTarget.js');
let OnboardComputerStatus = require('./OnboardComputerStatus.js');
let AttitudeTarget = require('./AttitudeTarget.js');
let TerrainReport = require('./TerrainReport.js');
let GPSRTK = require('./GPSRTK.js');
let CamIMUStamp = require('./CamIMUStamp.js');
let RCOut = require('./RCOut.js');
let HilStateQuaternion = require('./HilStateQuaternion.js');
let PositionTarget = require('./PositionTarget.js');
let ESCTelemetry = require('./ESCTelemetry.js');
let DebugValue = require('./DebugValue.js');
let FileEntry = require('./FileEntry.js');
let Mavlink = require('./Mavlink.js');
let GPSRAW = require('./GPSRAW.js');
let State = require('./State.js');
let ESCTelemetryItem = require('./ESCTelemetryItem.js');
let ActuatorControl = require('./ActuatorControl.js');
let CameraImageCaptured = require('./CameraImageCaptured.js');
let ESCInfoItem = require('./ESCInfoItem.js');
let MountControl = require('./MountControl.js');
let Trajectory = require('./Trajectory.js');
let ADSBVehicle = require('./ADSBVehicle.js');
let HilControls = require('./HilControls.js');
let Thrust = require('./Thrust.js');
let HilActuatorControls = require('./HilActuatorControls.js');
let WaypointList = require('./WaypointList.js');
let ManualControl = require('./ManualControl.js');
let ParamValue = require('./ParamValue.js');
let GlobalPositionTarget = require('./GlobalPositionTarget.js');
let ExtendedState = require('./ExtendedState.js');
let WheelOdomStamped = require('./WheelOdomStamped.js');
let RTKBaseline = require('./RTKBaseline.js');

module.exports = {
  EstimatorStatus: EstimatorStatus,
  MagnetometerReporter: MagnetometerReporter,
  RCIn: RCIn,
  RadioStatus: RadioStatus,
  LogEntry: LogEntry,
  LogData: LogData,
  CompanionProcessStatus: CompanionProcessStatus,
  Altitude: Altitude,
  VehicleInfo: VehicleInfo,
  Vibration: Vibration,
  ESCStatusItem: ESCStatusItem,
  RTCM: RTCM,
  BatteryStatus: BatteryStatus,
  Param: Param,
  HilGPS: HilGPS,
  OverrideRCIn: OverrideRCIn,
  Waypoint: Waypoint,
  OpticalFlowRad: OpticalFlowRad,
  Tunnel: Tunnel,
  TimesyncStatus: TimesyncStatus,
  CellularStatus: CellularStatus,
  CommandCode: CommandCode,
  HilSensor: HilSensor,
  StatusText: StatusText,
  NavControllerOutput: NavControllerOutput,
  ESCInfo: ESCInfo,
  ESCStatus: ESCStatus,
  GPSINPUT: GPSINPUT,
  VFR_HUD: VFR_HUD,
  HomePosition: HomePosition,
  PlayTuneV2: PlayTuneV2,
  WaypointReached: WaypointReached,
  LandingTarget: LandingTarget,
  OnboardComputerStatus: OnboardComputerStatus,
  AttitudeTarget: AttitudeTarget,
  TerrainReport: TerrainReport,
  GPSRTK: GPSRTK,
  CamIMUStamp: CamIMUStamp,
  RCOut: RCOut,
  HilStateQuaternion: HilStateQuaternion,
  PositionTarget: PositionTarget,
  ESCTelemetry: ESCTelemetry,
  DebugValue: DebugValue,
  FileEntry: FileEntry,
  Mavlink: Mavlink,
  GPSRAW: GPSRAW,
  State: State,
  ESCTelemetryItem: ESCTelemetryItem,
  ActuatorControl: ActuatorControl,
  CameraImageCaptured: CameraImageCaptured,
  ESCInfoItem: ESCInfoItem,
  MountControl: MountControl,
  Trajectory: Trajectory,
  ADSBVehicle: ADSBVehicle,
  HilControls: HilControls,
  Thrust: Thrust,
  HilActuatorControls: HilActuatorControls,
  WaypointList: WaypointList,
  ManualControl: ManualControl,
  ParamValue: ParamValue,
  GlobalPositionTarget: GlobalPositionTarget,
  ExtendedState: ExtendedState,
  WheelOdomStamped: WheelOdomStamped,
  RTKBaseline: RTKBaseline,
};
