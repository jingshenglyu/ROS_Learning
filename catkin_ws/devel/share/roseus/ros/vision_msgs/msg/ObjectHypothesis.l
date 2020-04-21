;; Auto-generated. Do not edit!


(when (boundp 'vision_msgs::ObjectHypothesis)
  (if (not (find-package "VISION_MSGS"))
    (make-package "VISION_MSGS"))
  (shadow 'ObjectHypothesis (find-package "VISION_MSGS")))
(unless (find-package "VISION_MSGS::OBJECTHYPOTHESIS")
  (make-package "VISION_MSGS::OBJECTHYPOTHESIS"))

(in-package "ROS")
;;//! \htmlinclude ObjectHypothesis.msg.html


(defclass vision_msgs::ObjectHypothesis
  :super ros::object
  :slots (_id _score ))

(defmethod vision_msgs::ObjectHypothesis
  (:init
   (&key
    ((:id __id) "")
    ((:score __score) 0.0)
    )
   (send-super :init)
   (setq _id (string __id))
   (setq _score (float __score))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:score
   (&optional __score)
   (if __score (setq _score __score)) _score)
  (:serialization-length
   ()
   (+
    ;; string _id
    4 (length _id)
    ;; float64 _score
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _id
       (write-long (length _id) s) (princ _id s)
     ;; float64 _score
       (sys::poke _score (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _score
     (setq _score (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get vision_msgs::ObjectHypothesis :md5sum-) "6d51bda6d3783ccca113b20d066cc679")
(setf (get vision_msgs::ObjectHypothesis :datatype-) "vision_msgs/ObjectHypothesis")
(setf (get vision_msgs::ObjectHypothesis :definition-)
      "# An object hypothesis that contains no position information.

# The unique ID of the object class. To get additional information about
#   this ID, such as its human-readable class name, listeners should perform a
#   lookup in a metadata database. See vision_msgs/VisionInfo.msg for more detail.
string id

# The probability or confidence value of the detected object. By convention,
#   this value should lie in the range [0-1].
float64 score
")



(provide :vision_msgs/ObjectHypothesis "6d51bda6d3783ccca113b20d066cc679")


