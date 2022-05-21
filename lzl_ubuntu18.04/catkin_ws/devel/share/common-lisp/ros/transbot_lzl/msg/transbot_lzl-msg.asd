
(cl:in-package :asdf)

(defsystem "transbot_lzl-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Wakebot" :depends-on ("_package_Wakebot"))
    (:file "_package_Wakebot" :depends-on ("_package"))
  ))