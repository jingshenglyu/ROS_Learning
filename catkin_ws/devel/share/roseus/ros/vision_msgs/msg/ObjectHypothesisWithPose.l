;; Auto-generated. Do not edit!


(when (boundp 'vision_msgs::ObjectHypothesisWithPose)
  (if (not (find-package "VISION_MSGS"))
    (make-package "VISION_MSGS"))
  (shadow 'ObjectHypothesisWithPose (find-package "VISION_MSGS")))
(unless (find-package "VISION_MSGS::OBJECTHYPOTHESISWITHPOSE")
  (make-package "VISION_MSGS::OBJECTHYPOTHESISWITHPOSE"))

(in-package "ROS")
;;//! \htmlinclude ObjectHypothesisWithPose.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass vision_msgs::ObjectHypothesisWithPose
  :super ros::object
  :slots (_id _score _pose ))

(defmethod vision_msgs::ObjectHypothesisWithPose
  (:init
   (&key
    ((:id __id) "")
    ((:score __score) 0.0)
    ((:pose __pose) (instance geometry_msgs::PoseWithCovariance :init))
    )
   (send-super :init)
   (setq _id (string __id))
   (setq _score (float __score))
   (setq _pose __pose)
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:score
   (&optional __score)
   (if __score (setq _score __score)) _score)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:serialization-length
   ()
   (+
    ;; string _id
    4 (length _id)
    ;; float64 _score
    8
    ;; geometry_msgs/PoseWithCovariance _pose
    (send _pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _id
       (write-long (length _id) s) (princ _id s)
     ;; float64 _score
       (sys::poke _score (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; geometry_msgs/PoseWithCovariance _pose
       (send _pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _score
     (setq _score (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; geometry_msgs/PoseWithCovariance _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;;
   self)
  )

(setf (get vision_msgs::ObjectHypothesisWithPose :md5sum-) "33f27ec2eb451c31670b819827352622")
(setf (get vision_msgs::ObjectHypothesisWithPose :datatype-) "vision_msgs/ObjectHypothesisWithPose")
(setf (get vision_msgs::ObjectHypothesisWithPose :definition-)
      "# An object hypothesis that contains position information.

# The unique ID of the object class. To get additional information about
#   this ID, such as its human-readable class name, listeners should perform a
#   lookup in a metadata database. See vision_msgs/VisionInfo.msg for more detail.
string id

# The probability or confidence value of the detected object. By convention,
#   this value should lie in the range [0-1].
float64 score

# The 6D pose of the object hypothesis. This pose should be
#   defined as the pose of some fixed reference point on the object, such a
#   the geometric center of the bounding box or the center of mass of the
#   object.
# Note that this pose is not stamped; frame information can be defined by
#   parent messages.
# Also note that different classes predicted for the same input data may have
#   different predicted 6D poses.
geometry_msgs/PoseWithCovariance pose

================================================================================
MSG: geometry_msgs/PoseWithCovariance
# This represents a pose in free space with uncertainty.

Pose pose

# Row-major representation of the 6x6 covariance matrix
# The orientation parameters use a fixed-axis representation.
# In order, the parameters are:
# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)
float64[36] covariance

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

")



(provide :vision_msgs/ObjectHypothesisWithPose "33f27ec2eb451c31670b819827352622")


