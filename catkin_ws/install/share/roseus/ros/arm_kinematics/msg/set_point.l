;; Auto-generated. Do not edit!


(when (boundp 'arm_kinematics::set_point)
  (if (not (find-package "ARM_KINEMATICS"))
    (make-package "ARM_KINEMATICS"))
  (shadow 'set_point (find-package "ARM_KINEMATICS")))
(unless (find-package "ARM_KINEMATICS::SET_POINT")
  (make-package "ARM_KINEMATICS::SET_POINT"))

(in-package "ROS")
;;//! \htmlinclude set_point.msg.html


(defclass arm_kinematics::set_point
  :super ros::object
  :slots (_x _y _z _theta _phi ))

(defmethod arm_kinematics::set_point
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:z __z) 0.0)
    ((:theta __theta) 0.0)
    ((:phi __phi) 0.0)
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _z (float __z))
   (setq _theta (float __theta))
   (setq _phi (float __phi))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:z
   (&optional __z)
   (if __z (setq _z __z)) _z)
  (:theta
   (&optional __theta)
   (if __theta (setq _theta __theta)) _theta)
  (:phi
   (&optional __phi)
   (if __phi (setq _phi __phi)) _phi)
  (:serialization-length
   ()
   (+
    ;; float64 _x
    8
    ;; float64 _y
    8
    ;; float64 _z
    8
    ;; float64 _theta
    8
    ;; float64 _phi
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _x
       (sys::poke _x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y
       (sys::poke _y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _z
       (sys::poke _z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _theta
       (sys::poke _theta (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _phi
       (sys::poke _phi (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _x
     (setq _x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y
     (setq _y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _z
     (setq _z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _theta
     (setq _theta (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _phi
     (setq _phi (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get arm_kinematics::set_point :md5sum-) "6d80a63c1737226c4b53935acebeae92")
(setf (get arm_kinematics::set_point :datatype-) "arm_kinematics/set_point")
(setf (get arm_kinematics::set_point :definition-)
      "float64 x
float64 y
float64 z
float64 theta
float64 phi

")



(provide :arm_kinematics/set_point "6d80a63c1737226c4b53935acebeae92")


