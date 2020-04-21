; Auto-generated. Do not edit!


(cl:in-package vision_msgs-msg)


;//! \htmlinclude ObjectHypothesis.msg.html

(cl:defclass <ObjectHypothesis> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:string
    :initform "")
   (score
    :reader score
    :initarg :score
    :type cl:float
    :initform 0.0))
)

(cl:defclass ObjectHypothesis (<ObjectHypothesis>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ObjectHypothesis>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ObjectHypothesis)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vision_msgs-msg:<ObjectHypothesis> is deprecated: use vision_msgs-msg:ObjectHypothesis instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <ObjectHypothesis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision_msgs-msg:id-val is deprecated.  Use vision_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'score-val :lambda-list '(m))
(cl:defmethod score-val ((m <ObjectHypothesis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision_msgs-msg:score-val is deprecated.  Use vision_msgs-msg:score instead.")
  (score m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ObjectHypothesis>) ostream)
  "Serializes a message object of type '<ObjectHypothesis>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'id))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'score))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ObjectHypothesis>) istream)
  "Deserializes a message object of type '<ObjectHypothesis>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'score) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ObjectHypothesis>)))
  "Returns string type for a message object of type '<ObjectHypothesis>"
  "vision_msgs/ObjectHypothesis")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ObjectHypothesis)))
  "Returns string type for a message object of type 'ObjectHypothesis"
  "vision_msgs/ObjectHypothesis")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ObjectHypothesis>)))
  "Returns md5sum for a message object of type '<ObjectHypothesis>"
  "6d51bda6d3783ccca113b20d066cc679")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ObjectHypothesis)))
  "Returns md5sum for a message object of type 'ObjectHypothesis"
  "6d51bda6d3783ccca113b20d066cc679")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ObjectHypothesis>)))
  "Returns full string definition for message of type '<ObjectHypothesis>"
  (cl:format cl:nil "# An object hypothesis that contains no position information.~%~%# The unique ID of the object class. To get additional information about~%#   this ID, such as its human-readable class name, listeners should perform a~%#   lookup in a metadata database. See vision_msgs/VisionInfo.msg for more detail.~%string id~%~%# The probability or confidence value of the detected object. By convention,~%#   this value should lie in the range [0-1].~%float64 score~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ObjectHypothesis)))
  "Returns full string definition for message of type 'ObjectHypothesis"
  (cl:format cl:nil "# An object hypothesis that contains no position information.~%~%# The unique ID of the object class. To get additional information about~%#   this ID, such as its human-readable class name, listeners should perform a~%#   lookup in a metadata database. See vision_msgs/VisionInfo.msg for more detail.~%string id~%~%# The probability or confidence value of the detected object. By convention,~%#   this value should lie in the range [0-1].~%float64 score~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ObjectHypothesis>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'id))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ObjectHypothesis>))
  "Converts a ROS message object to a list"
  (cl:list 'ObjectHypothesis
    (cl:cons ':id (id msg))
    (cl:cons ':score (score msg))
))
