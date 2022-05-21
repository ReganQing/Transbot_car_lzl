;; Auto-generated. Do not edit!


(when (boundp 'robot_voice::Wakebot)
  (if (not (find-package "ROBOT_VOICE"))
    (make-package "ROBOT_VOICE"))
  (shadow 'Wakebot (find-package "ROBOT_VOICE")))
(unless (find-package "ROBOT_VOICE::WAKEBOT")
  (make-package "ROBOT_VOICE::WAKEBOT"))

(in-package "ROS")
;;//! \htmlinclude Wakebot.msg.html


(intern "*UNKNOWN*" (find-package "ROBOT_VOICE::WAKEBOT"))
(shadow '*UNKNOWN* (find-package "ROBOT_VOICE::WAKEBOT"))
(defconstant robot_voice::Wakebot::*UNKNOWN* 0)
(intern "*MALE*" (find-package "ROBOT_VOICE::WAKEBOT"))
(shadow '*MALE* (find-package "ROBOT_VOICE::WAKEBOT"))
(defconstant robot_voice::Wakebot::*MALE* 1)
(intern "*FEMALE*" (find-package "ROBOT_VOICE::WAKEBOT"))
(shadow '*FEMALE* (find-package "ROBOT_VOICE::WAKEBOT"))
(defconstant robot_voice::Wakebot::*FEMALE* 2)
(defclass robot_voice::Wakebot
  :super ros::object
  :slots (_name _age _sex ))

(defmethod robot_voice::Wakebot
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

(setf (get robot_voice::Wakebot :md5sum-) "b3f7ec37d11629ec3010e27635cf22a9")
(setf (get robot_voice::Wakebot :datatype-) "robot_voice/Wakebot")
(setf (get robot_voice::Wakebot :definition-)
      "string name
uint8  age
uint8  sex

uint8 unknown = 0
uint8 male    = 1
uint8 female  = 2


")



(provide :robot_voice/Wakebot "b3f7ec37d11629ec3010e27635cf22a9")


