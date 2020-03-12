; Auto-generated. Do not edit!


(cl:in-package arm_kinematics-msg)


;//! \htmlinclude Joint_angles.msg.html

(cl:defclass <Joint_angles> (roslisp-msg-protocol:ros-message)
  ((t1
    :reader t1
    :initarg :t1
    :type cl:integer
    :initform 0)
   (t2
    :reader t2
    :initarg :t2
    :type cl:integer
    :initform 0)
   (t3
    :reader t3
    :initarg :t3
    :type cl:integer
    :initform 0))
)

(cl:defclass Joint_angles (<Joint_angles>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Joint_angles>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Joint_angles)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name arm_kinematics-msg:<Joint_angles> is deprecated: use arm_kinematics-msg:Joint_angles instead.")))

(cl:ensure-generic-function 't1-val :lambda-list '(m))
(cl:defmethod t1-val ((m <Joint_angles>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_kinematics-msg:t1-val is deprecated.  Use arm_kinematics-msg:t1 instead.")
  (t1 m))

(cl:ensure-generic-function 't2-val :lambda-list '(m))
(cl:defmethod t2-val ((m <Joint_angles>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_kinematics-msg:t2-val is deprecated.  Use arm_kinematics-msg:t2 instead.")
  (t2 m))

(cl:ensure-generic-function 't3-val :lambda-list '(m))
(cl:defmethod t3-val ((m <Joint_angles>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_kinematics-msg:t3-val is deprecated.  Use arm_kinematics-msg:t3 instead.")
  (t3 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Joint_angles>) ostream)
  "Serializes a message object of type '<Joint_angles>"
  (cl:let* ((signed (cl:slot-value msg 't1)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 't2)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 't3)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Joint_angles>) istream)
  "Deserializes a message object of type '<Joint_angles>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 't1) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 't2) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 't3) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Joint_angles>)))
  "Returns string type for a message object of type '<Joint_angles>"
  "arm_kinematics/Joint_angles")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Joint_angles)))
  "Returns string type for a message object of type 'Joint_angles"
  "arm_kinematics/Joint_angles")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Joint_angles>)))
  "Returns md5sum for a message object of type '<Joint_angles>"
  "746144a4e9cc3ba3202f5653eb074672")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Joint_angles)))
  "Returns md5sum for a message object of type 'Joint_angles"
  "746144a4e9cc3ba3202f5653eb074672")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Joint_angles>)))
  "Returns full string definition for message of type '<Joint_angles>"
  (cl:format cl:nil "int64 t1~%int64 t2~%int64 t3~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Joint_angles)))
  "Returns full string definition for message of type 'Joint_angles"
  (cl:format cl:nil "int64 t1~%int64 t2~%int64 t3~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Joint_angles>))
  (cl:+ 0
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Joint_angles>))
  "Converts a ROS message object to a list"
  (cl:list 'Joint_angles
    (cl:cons ':t1 (t1 msg))
    (cl:cons ':t2 (t2 msg))
    (cl:cons ':t3 (t3 msg))
))
