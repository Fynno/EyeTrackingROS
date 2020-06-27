
(cl:in-package :asdf)

(defsystem "arm_kinematics-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Joint_angles" :depends-on ("_package_Joint_angles"))
    (:file "_package_Joint_angles" :depends-on ("_package"))
    (:file "set_point" :depends-on ("_package_set_point"))
    (:file "_package_set_point" :depends-on ("_package"))
  ))