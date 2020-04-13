
(cl:in-package :asdf)

(defsystem "turtle_control-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "SpawnTurtle" :depends-on ("_package_SpawnTurtle"))
    (:file "_package_SpawnTurtle" :depends-on ("_package"))
  ))