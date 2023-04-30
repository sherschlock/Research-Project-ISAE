; Auto-generated. Do not edit!


(cl:in-package mrs_msgs-msg)


;//! \htmlinclude ImagePointsWithFloatStamped.msg.html

(cl:defclass <ImagePointsWithFloatStamped> (roslisp-msg-protocol:ros-message)
  ((stamp
    :reader stamp
    :initarg :stamp
    :type cl:real
    :initform 0)
   (image_height
    :reader image_height
    :initarg :image_height
    :type cl:integer
    :initform 0)
   (image_width
    :reader image_width
    :initarg :image_width
    :type cl:integer
    :initform 0)
   (points
    :reader points
    :initarg :points
    :type (cl:vector mrs_msgs-msg:Point2DWithFloat)
   :initform (cl:make-array 0 :element-type 'mrs_msgs-msg:Point2DWithFloat :initial-element (cl:make-instance 'mrs_msgs-msg:Point2DWithFloat))))
)

(cl:defclass ImagePointsWithFloatStamped (<ImagePointsWithFloatStamped>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ImagePointsWithFloatStamped>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ImagePointsWithFloatStamped)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mrs_msgs-msg:<ImagePointsWithFloatStamped> is deprecated: use mrs_msgs-msg:ImagePointsWithFloatStamped instead.")))

(cl:ensure-generic-function 'stamp-val :lambda-list '(m))
(cl:defmethod stamp-val ((m <ImagePointsWithFloatStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:stamp-val is deprecated.  Use mrs_msgs-msg:stamp instead.")
  (stamp m))

(cl:ensure-generic-function 'image_height-val :lambda-list '(m))
(cl:defmethod image_height-val ((m <ImagePointsWithFloatStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:image_height-val is deprecated.  Use mrs_msgs-msg:image_height instead.")
  (image_height m))

(cl:ensure-generic-function 'image_width-val :lambda-list '(m))
(cl:defmethod image_width-val ((m <ImagePointsWithFloatStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:image_width-val is deprecated.  Use mrs_msgs-msg:image_width instead.")
  (image_width m))

(cl:ensure-generic-function 'points-val :lambda-list '(m))
(cl:defmethod points-val ((m <ImagePointsWithFloatStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:points-val is deprecated.  Use mrs_msgs-msg:points instead.")
  (points m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ImagePointsWithFloatStamped>) ostream)
  "Serializes a message object of type '<ImagePointsWithFloatStamped>"
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'stamp)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'stamp) (cl:floor (cl:slot-value msg 'stamp)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'image_height)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'image_height)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'image_height)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'image_height)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'image_width)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'image_width)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'image_width)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'image_width)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'points))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'points))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ImagePointsWithFloatStamped>) istream)
  "Deserializes a message object of type '<ImagePointsWithFloatStamped>"
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'stamp) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'image_height)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'image_height)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'image_height)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'image_height)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'image_width)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'image_width)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'image_width)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'image_width)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'points) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'points)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'mrs_msgs-msg:Point2DWithFloat))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ImagePointsWithFloatStamped>)))
  "Returns string type for a message object of type '<ImagePointsWithFloatStamped>"
  "mrs_msgs/ImagePointsWithFloatStamped")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ImagePointsWithFloatStamped)))
  "Returns string type for a message object of type 'ImagePointsWithFloatStamped"
  "mrs_msgs/ImagePointsWithFloatStamped")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ImagePointsWithFloatStamped>)))
  "Returns md5sum for a message object of type '<ImagePointsWithFloatStamped>"
  "2f80394ba17236fe2f5a874f644ea3a5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ImagePointsWithFloatStamped)))
  "Returns md5sum for a message object of type 'ImagePointsWithFloatStamped"
  "2f80394ba17236fe2f5a874f644ea3a5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ImagePointsWithFloatStamped>)))
  "Returns full string definition for message of type '<ImagePointsWithFloatStamped>"
  (cl:format cl:nil "time stamp~%uint32 image_height~%uint32 image_width~%mrs_msgs/Point2DWithFloat[] points~%~%================================================================================~%MSG: mrs_msgs/Point2DWithFloat~%float64 x~%float64 y~%float64 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ImagePointsWithFloatStamped)))
  "Returns full string definition for message of type 'ImagePointsWithFloatStamped"
  (cl:format cl:nil "time stamp~%uint32 image_height~%uint32 image_width~%mrs_msgs/Point2DWithFloat[] points~%~%================================================================================~%MSG: mrs_msgs/Point2DWithFloat~%float64 x~%float64 y~%float64 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ImagePointsWithFloatStamped>))
  (cl:+ 0
     8
     4
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'points) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ImagePointsWithFloatStamped>))
  "Converts a ROS message object to a list"
  (cl:list 'ImagePointsWithFloatStamped
    (cl:cons ':stamp (stamp msg))
    (cl:cons ':image_height (image_height msg))
    (cl:cons ':image_width (image_width msg))
    (cl:cons ':points (points msg))
))
