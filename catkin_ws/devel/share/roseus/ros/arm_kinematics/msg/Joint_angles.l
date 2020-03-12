;; Auto-generated. Do not edit!


(when (boundp 'arm_kinematics::Joint_angles)
  (if (not (find-package "ARM_KINEMATICS"))
    (make-package "ARM_KINEMATICS"))
  (shadow 'Joint_angles (find-package "ARM_KINEMATICS")))
(unless (find-package "ARM_KINEMATICS::JOINT_ANGLES")
  (make-package "ARM_KINEMATICS::JOINT_ANGLES"))

(in-package "ROS")
;;//! \htmlinclude Joint_angles.msg.html


(defclass arm_kinematics::Joint_angles
  :super ros::object
  :slots (_t1 _t2 _t3 ))

(defmethod arm_kinematics::Joint_angles
  (:init
   (&key
    ((:t1 __t1) 0)
    ((:t2 __t2) 0)
    ((:t3 __t3) 0)
    )
   (send-super :init)
   (setq _t1 (round __t1))
   (setq _t2 (round __t2))
   (setq _t3 (round __t3))
   self)
  (:t1
   (&optional __t1)
   (if __t1 (setq _t1 __t1)) _t1)
  (:t2
   (&optional __t2)
   (if __t2 (setq _t2 __t2)) _t2)
  (:t3
   (&optional __t3)
   (if __t3 (setq _t3 __t3)) _t3)
  (:serialization-length
   ()
   (+
    ;; int64 _t1
    8
    ;; int64 _t2
    8
    ;; int64 _t3
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _t1
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _t1 (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _t1) (= (length (_t1 . bv)) 2)) ;; bignum
              (write-long (ash (elt (_t1 . bv) 0) 0) s)
              (write-long (ash (elt (_t1 . bv) 1) -1) s))
             ((and (class _t1) (= (length (_t1 . bv)) 1)) ;; big1
              (write-long (elt (_t1 . bv) 0) s)
              (write-long (if (>= _t1 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _t1 s)(write-long (if (>= _t1 0) 0 #xffffffff) s)))
     ;; int64 _t2
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _t2 (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _t2) (= (length (_t2 . bv)) 2)) ;; bignum
              (write-long (ash (elt (_t2 . bv) 0) 0) s)
              (write-long (ash (elt (_t2 . bv) 1) -1) s))
             ((and (class _t2) (= (length (_t2 . bv)) 1)) ;; big1
              (write-long (elt (_t2 . bv) 0) s)
              (write-long (if (>= _t2 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _t2 s)(write-long (if (>= _t2 0) 0 #xffffffff) s)))
     ;; int64 _t3
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _t3 (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _t3) (= (length (_t3 . bv)) 2)) ;; bignum
              (write-long (ash (elt (_t3 . bv) 0) 0) s)
              (write-long (ash (elt (_t3 . bv) 1) -1) s))
             ((and (class _t3) (= (length (_t3 . bv)) 1)) ;; big1
              (write-long (elt (_t3 . bv) 0) s)
              (write-long (if (>= _t3 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _t3 s)(write-long (if (>= _t3 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _t1
#+(or :alpha :irix6 :x86_64)
      (setf _t1 (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _t1 (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _t2
#+(or :alpha :irix6 :x86_64)
      (setf _t2 (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _t2 (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _t3
#+(or :alpha :irix6 :x86_64)
      (setf _t3 (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _t3 (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(setf (get arm_kinematics::Joint_angles :md5sum-) "746144a4e9cc3ba3202f5653eb074672")
(setf (get arm_kinematics::Joint_angles :datatype-) "arm_kinematics/Joint_angles")
(setf (get arm_kinematics::Joint_angles :definition-)
      "int64 t1
int64 t2
int64 t3
")



(provide :arm_kinematics/Joint_angles "746144a4e9cc3ba3202f5653eb074672")


