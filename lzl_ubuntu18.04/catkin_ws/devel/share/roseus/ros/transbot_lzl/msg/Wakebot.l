;; Auto-generated. Do not edit!


(when (boundp 'transbot_lzl::Wakebot)
  (if (not (find-package "TRANSBOT_LZL"))
    (make-package "TRANSBOT_LZL"))
  (shadow 'Wakebot (find-package "TRANSBOT_LZL")))
(unless (find-package "TRANSBOT_LZL::WAKEBOT")
  (make-package "TRANSBOT_LZL::WAKEBOT"))

(in-package "ROS")
;;//! \htmlinclude Wakebot.msg.html


(intern "*UNKNOWN*" (find-package "TRANSBOT_LZL::WAKEBOT"))
(shadow '*UNKNOWN* (find-package "TRANSBOT_LZL::WAKEBOT"))
(defconstant transbot_lzl::Wakebot::*UNKNOWN* 0)
(intern "*MALE*" (find-package "TRANSBOT_LZL::WAKEBOT"))
(shadow '*MALE* (find-package "TRANSBOT_LZL::WAKEBOT"))
(defconstant transbot_lzl::Wakebot::*MALE* 1)
(intern "*FEMALE*" (find-package "TRANSBOT_LZL::WAKEBOT"))
(shadow '*FEMALE* (find-package "TRANSBOT_LZL::WAKEBOT"))
(defconstant transbot_lzl::Wakebot::*FEMALE* 2)
(defclass transbot_lzl::Wakebot
  :super ros::object
  :slots (_name _age _sex ))

(defmethod transbot_lzl::Wakebot
  (:init
   (&key
    ((:name __name) "")
    ((:age __age) 0)
    ((:sex __sex) 0)
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _age (round __age))
   (setq _sex (round __sex))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:age
   (&optional __age)
   (if __age (setq _age __age)) _age)
  (:sex
   (&optional __sex)
   (if __sex (setq _sex __sex)) _sex)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; uint8 _age
    1
    ;; uint8 _sex
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; uint8 _age
       (write-byte _age s)
     ;; uint8 _sex
       (write-byte _sex s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint8 _age
     (setq _age (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _sex
     (setq _sex (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get transbot_lzl::Wakebot :md5sum-) "b3f7ec37d11629ec3010e27635cf22a9")
(setf (get transbot_lzl::Wakebot :datatype-) "transbot_lzl/Wakebot")
(setf (get transbot_lzl::Wakebot :definition-)
      "string name
uint8  age
uint8  sex

uint8 unknown = 0
uint8 male    = 1
uint8 female  = 2


")



(provide :transbot_lzl/Wakebot "b3f7ec37d11629ec3010e27635cf22a9")


