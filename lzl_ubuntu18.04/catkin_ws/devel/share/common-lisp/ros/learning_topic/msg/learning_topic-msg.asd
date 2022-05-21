
(cl:in-package :asdf)

(defsystem "learning_topic-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Person" :depends-on ("_package_Person"))
    (:file "_package_Person" :depends-on ("_package"))
    (:file "Wakebot" :depends-on ("_package_Wakebot"))
    (:file "_package_Wakebot" :depends-on ("_package"))
  ))