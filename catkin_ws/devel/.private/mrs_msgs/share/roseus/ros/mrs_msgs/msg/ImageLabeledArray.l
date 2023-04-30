;; Auto-generated. Do not edit!


(when (boundp 'mrs_msgs::ImageLabeledArray)
  (if (not (find-package "MRS_MSGS"))
    (make-package "MRS_MSGS"))
  (shadow 'ImageLabeledArray (find-package "MRS_MSGS")))
(unless (find-package "MRS_MSGS::IMAGELABELEDARRAY")
  (make-package "MRS_MSGS::IMAGELABELEDARRAY"))

(in-package "ROS")
;;//! \htmlinclude ImageLabeledArray.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass mrs_msgs::ImageLabeledArray
  :super ros::object
  :slots (_header _imgs_labeled ))

(defmethod mrs_msgs::ImageLabeledArray
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:imgs_labeled __imgs_labeled) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _imgs_labeled __imgs_labeled)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:imgs_labeled
   (&rest __imgs_labeled)
   (if (keywordp (car __imgs_labeled))
       (send* _imgs_labeled __imgs_labeled)
     (progn
       (if __imgs_labeled (setq _imgs_labeled (car __imgs_labeled)))
       _imgs_labeled)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; mrs_msgs/ImageLabeled[] _imgs_labeled
    (apply #'+ (send-all _imgs_labeled :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; mrs_msgs/ImageLabeled[] _imgs_labeled
     (write-long (length _imgs_labeled) s)
     (dolist (elem _imgs_labeled)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; mrs_msgs/ImageLabeled[] _imgs_labeled
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _imgs_labeled (let (r) (dotimes (i n) (push (instance mrs_msgs::ImageLabeled :init) r)) r))
     (dolist (elem- _imgs_labeled)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get mrs_msgs::ImageLabeledArray :md5sum-) "3994e4c6237f0873af89ad4ed9eb17f3")
(setf (get mrs_msgs::ImageLabeledArray :datatype-) "mrs_msgs/ImageLabeledArray")
(setf (get mrs_msgs::ImageLabeledArray :definition-)
      "# This message represents an Image and corresponding camera label
# Can be suitable for any multi camera setup as UVDar or stereo pair
# to synchronise all images on a ROS level (check all timestamps and
# collect them in one array with one timestamp)

Header header
mrs_msgs/ImageLabeled[] imgs_labeled

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: mrs_msgs/ImageLabeled
string label
sensor_msgs/Image img

================================================================================
MSG: sensor_msgs/Image
# This message contains an uncompressed image
# (0, 0) is at top-left corner of image
#

Header header        # Header timestamp should be acquisition time of image
                     # Header frame_id should be optical frame of camera
                     # origin of frame should be optical center of camera
                     # +x should point to the right in the image
                     # +y should point down in the image
                     # +z should point into to plane of the image
                     # If the frame_id here and the frame_id of the CameraInfo
                     # message associated with the image conflict
                     # the behavior is undefined

uint32 height         # image height, that is, number of rows
uint32 width          # image width, that is, number of columns

# The legal values for encoding are in file src/image_encodings.cpp
# If you want to standardize a new string format, join
# ros-users@lists.sourceforge.net and send an email proposing a new encoding.

string encoding       # Encoding of pixels -- channel meaning, ordering, size
                      # taken from the list of strings in include/sensor_msgs/image_encodings.h

uint8 is_bigendian    # is this data bigendian?
uint32 step           # Full row length in bytes
uint8[] data          # actual matrix data, size is (step * rows)

")



(provide :mrs_msgs/ImageLabeledArray "3994e4c6237f0873af89ad4ed9eb17f3")


