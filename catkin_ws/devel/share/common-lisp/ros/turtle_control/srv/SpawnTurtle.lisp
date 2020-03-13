; Auto-generated. Do not edit!


(cl:in-package turtle_control-srv)


;//! \htmlinclude SpawnTurtle-request.msg.html

(cl:defclass <SpawnTurtle-request> (roslisp-msg-protocol:ros-message)
  ((tur_name
    :reader tur_name
    :initarg :tur_name
    :type cl:string
    :initform "")
   (pose_x
    :reader pose_x
    :initarg :pose_x
    :type cl:float
    :initform 0.0)
   (pose_y
    :reader pose_y
    :initarg :pose_y
    :type cl:float
    :initform 0.0)
   (tur_theta
    :reader tur_theta
    :initarg :tur_theta
    :type cl:float
    :initform 0.0))
)

(cl:defclass SpawnTurtle-request (<SpawnTurtle-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SpawnTurtle-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SpawnTurtle-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name turtle_control-srv:<SpawnTurtle-request> is deprecated: use turtle_control-srv:SpawnTurtle-request instead.")))

(cl:ensure-generic-function 'tur_name-val :lambda-list '(m))
(cl:defmethod tur_name-val ((m <SpawnTurtle-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader turtle_control-srv:tur_name-val is deprecated.  Use turtle_control-srv:tur_name instead.")
  (tur_name m))

(cl:ensure-generic-function 'pose_x-val :lambda-list '(m))
(cl:defmethod pose_x-val ((m <SpawnTurtle-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader turtle_control-srv:pose_x-val is deprecated.  Use turtle_control-srv:pose_x instead.")
  (pose_x m))

(cl:ensure-generic-function 'pose_y-val :lambda-list '(m))
(cl:defmethod pose_y-val ((m <SpawnTurtle-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader turtle_control-srv:pose_y-val is deprecated.  Use turtle_control-srv:pose_y instead.")
  (pose_y m))

(cl:ensure-generic-function 'tur_theta-val :lambda-list '(m))
(cl:defmethod tur_theta-val ((m <SpawnTurtle-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader turtle_control-srv:tur_theta-val is deprecated.  Use turtle_control-srv:tur_theta instead.")
  (tur_theta m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SpawnTurtle-request>) ostream)
  "Serializes a message object of type '<SpawnTurtle-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'tur_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'tur_name))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'pose_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'pose_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'tur_theta))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SpawnTurtle-request>) istream)
  "Deserializes a message object of type '<SpawnTurtle-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'tur_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'tur_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'pose_x) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'pose_y) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'tur_theta) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SpawnTurtle-request>)))
  "Returns string type for a service object of type '<SpawnTurtle-request>"
  "turtle_control/SpawnTurtleRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SpawnTurtle-request)))
  "Returns string type for a service object of type 'SpawnTurtle-request"
  "turtle_control/SpawnTurtleRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SpawnTurtle-request>)))
  "Returns md5sum for a message object of type '<SpawnTurtle-request>"
  "a2d95187599909408d4f95d87ec9484c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SpawnTurtle-request)))
  "Returns md5sum for a message object of type 'SpawnTurtle-request"
  "a2d95187599909408d4f95d87ec9484c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SpawnTurtle-request>)))
  "Returns full string definition for message of type '<SpawnTurtle-request>"
  (cl:format cl:nil "string tur_name~%float64  pose_x~%float64  pose_y~%float64  tur_theta~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SpawnTurtle-request)))
  "Returns full string definition for message of type 'SpawnTurtle-request"
  (cl:format cl:nil "string tur_name~%float64  pose_x~%float64  pose_y~%float64  tur_theta~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SpawnTurtle-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'tur_name))
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SpawnTurtle-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SpawnTurtle-request
    (cl:cons ':tur_name (tur_name msg))
    (cl:cons ':pose_x (pose_x msg))
    (cl:cons ':pose_y (pose_y msg))
    (cl:cons ':tur_theta (tur_theta msg))
))
;//! \htmlinclude SpawnTurtle-response.msg.html

(cl:defclass <SpawnTurtle-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:string
    :initform ""))
)

(cl:defclass SpawnTurtle-response (<SpawnTurtle-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SpawnTurtle-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SpawnTurtle-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name turtle_control-srv:<SpawnTurtle-response> is deprecated: use turtle_control-srv:SpawnTurtle-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <SpawnTurtle-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader turtle_control-srv:result-val is deprecated.  Use turtle_control-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SpawnTurtle-response>) ostream)
  "Serializes a message object of type '<SpawnTurtle-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'result))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'result))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SpawnTurtle-response>) istream)
  "Deserializes a message object of type '<SpawnTurtle-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'result) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SpawnTurtle-response>)))
  "Returns string type for a service object of type '<SpawnTurtle-response>"
  "turtle_control/SpawnTurtleResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SpawnTurtle-response)))
  "Returns string type for a service object of type 'SpawnTurtle-response"
  "turtle_control/SpawnTurtleResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SpawnTurtle-response>)))
  "Returns md5sum for a message object of type '<SpawnTurtle-response>"
  "a2d95187599909408d4f95d87ec9484c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SpawnTurtle-response)))
  "Returns md5sum for a message object of type 'SpawnTurtle-response"
  "a2d95187599909408d4f95d87ec9484c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SpawnTurtle-response>)))
  "Returns full string definition for message of type '<SpawnTurtle-response>"
  (cl:format cl:nil "string result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SpawnTurtle-response)))
  "Returns full string definition for message of type 'SpawnTurtle-response"
  (cl:format cl:nil "string result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SpawnTurtle-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'result))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SpawnTurtle-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SpawnTurtle-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SpawnTurtle)))
  'SpawnTurtle-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SpawnTurtle)))
  'SpawnTurtle-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SpawnTurtle)))
  "Returns string type for a service object of type '<SpawnTurtle>"
  "turtle_control/SpawnTurtle")