
(cl:in-package :asdf)

(defsystem "mrs_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :mrs_msgs-msg
)
  :components ((:file "_package")
    (:file "GetPathSrv" :depends-on ("_package_GetPathSrv"))
    (:file "_package_GetPathSrv" :depends-on ("_package"))
    (:file "PathSrv" :depends-on ("_package_PathSrv"))
    (:file "_package_PathSrv" :depends-on ("_package"))
  ))