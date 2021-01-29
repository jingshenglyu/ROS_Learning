;; Auto-generated. Do not edit!


(when (boundp 'turtle_control::SpawnTurtle)
  (if (not (find-package "TURTLE_CONTROL"))
    (make-package "TURTLE_CONTROL"))
  (shadow 'SpawnTurtle (find-package "TURTLE_CONTROL")))
(unless (find-package "TURTLE_CONTROL::SPAWNTURTLE")
  (make-package "TURTLE_CONTROL::SPAWNTURTLE"))
(unless (find-package "TURTLE_CONTROL::SPAWNTURTLEREQUEST")
  (make-package "TURTLE_CONTROL::SPAWNTURTLEREQUEST"))
(unless (find-package "TURTLE_CONTROL::SPAWNTURTLERESPONSE")
  (make-package "TURTLE_CONTROL::SPAWNTURTLERESPONSE"))

(in-package "ROS")





(defclass turtle_control::SpawnTurtleRequest
  :super ros::object
  :slots (_tur_name _pose_x _pose_y _tur_theta ))

(defmethod turtle_control::SpawnTurtleRequest
  (:init
   (&key
    ((:tur_name __tur_name) "")
    ((:pose_x __pose_x) 0.0)
    ((:pose_y __pose_y) 0.0)
    ((:tur_theta __tur_theta) 0.0)
    )
   (send-super :init)
   (setq _tur_name (string __tur_name))
   (setq _pose_x (float __pose_x))
   (setq _pose_y (float __pose_y))
   (setq _tur_theta (float __tur_theta))
   self)
  (:tur_name
   (&optional __tur_name)
   (if __tur_name (setq _tur_name __tur_name)) _tur_name)
  (:pose_x
   (&optional __pose_x)
   (if __pose_x (setq _pose_x __pose_x)) _pose_x)
  (:pose_y
   (&optional __pose_y)
   (if __pose_y (setq _pose_y __pose_y)) _pose_y)
  (:tur_theta
   (&optional __tur_theta)
   (if __tur_theta (setq _tur_theta __tur_theta)) _tur_theta)
  (:serialization-length
   ()
   (+
    ;; string _tur_name
    4 (length _tur_name)
    ;; float64 _pose_x
    8
    ;; float64 _pose_y
    8
    ;; float64 _tur_theta
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _tur_name
       (write-long (length _tur_name) s) (princ _tur_name s)
     ;; float64 _pose_x
       (sys::poke _pose_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _pose_y
       (sys::poke _pose_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _tur_theta
       (sys::poke _tur_theta (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _tur_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _tur_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _pose_x
     (setq _pose_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _pose_y
     (setq _pose_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _tur_theta
     (setq _tur_theta (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass turtle_control::SpawnTurtleResponse
  :super ros::object
  :slots (_result ))

(defmethod turtle_control::SpawnTurtleResponse
  (:init
   (&key
    ((:result __result) "")
    )
   (send-super :init)
   (setq _result (string __result))
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; string _result
    4 (length _result)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _result
       (write-long (length _result) s) (princ _result s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _result
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _result (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass turtle_control::SpawnTurtle
  :super ros::object
  :slots ())

(setf (get turtle_control::SpawnTurtle :md5sum-) "a2d95187599909408d4f95d87ec9484c")
(setf (get turtle_control::SpawnTurtle :datatype-) "turtle_control/SpawnTurtle")
(setf (get turtle_control::SpawnTurtle :request) turtle_control::SpawnTurtleRequest)
(setf (get turtle_control::SpawnTurtle :response) turtle_control::SpawnTurtleResponse)

(defmethod turtle_control::SpawnTurtleRequest
  (:response () (instance turtle_control::SpawnTurtleResponse :init)))

(setf (get turtle_control::SpawnTurtleRequest :md5sum-) "a2d95187599909408d4f95d87ec9484c")
(setf (get turtle_control::SpawnTurtleRequest :datatype-) "turtle_control/SpawnTurtleRequest")
(setf (get turtle_control::SpawnTurtleRequest :definition-)
      "string tur_name
float64  pose_x
float64  pose_y
float64  tur_theta

---
string result

")

(setf (get turtle_control::SpawnTurtleResponse :md5sum-) "a2d95187599909408d4f95d87ec9484c")
(setf (get turtle_control::SpawnTurtleResponse :datatype-) "turtle_control/SpawnTurtleResponse")
(setf (get turtle_control::SpawnTurtleResponse :definition-)
      "string tur_name
float64  pose_x
float64  pose_y
float64  tur_theta

---
string result

")



(provide :turtle_control/SpawnTurtle "a2d95187599909408d4f95d87ec9484c")


