;; Auto-generated. Do not edit!


(when (boundp 'learning_topic::Wakebot)
  (if (not (find-package "LEARNING_TOPIC"))
    (make-package "LEARNING_TOPIC"))
  (shadow 'Wakebot (find-package "LEARNING_TOPIC")))
(unless (find-package "LEARNING_TOPIC::WAKEBOT")
  (make-package "LEARNING_TOPIC::WAKEBOT"))

(in-package "ROS")
;;//! \htmlinclude Wakebot.msg.html


(defclass learning_topic::Wakebot
  :super ros::object
  :slots (_wakewords _dist _dire ))

(defmethod learning_topic::Wakebot
  (:init
   (&key
    ((:wakewords __wakewords) "")
    ((:dist __dist) 0)
    ((:dire __dire) 0)
    )
   (send-super :init)
   (setq _wakewords (string __wakewords))
   (setq _dist (round __dist))
   (setq _dire (round __dire))
   self)
  (:wakewords
   (&optional __wakewords)
   (if __wakewords (setq _wakewords __wakewords)) _wakewords)
  (:dist
   (&optional __dist)
   (if __dist (setq _dist __dist)) _dist)
  (:dire
   (&optional __dire)
   (if __dire (setq _dire __dire)) _dire)
  (:serialization-length
   ()
   (+
    ;; string _wakewords
    4 (length _wakewords)
    ;; uint8 _dist
    1
    ;; uint8 _dire
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _wakewords
       (write-long (length _wakewords) s) (princ _wakewords s)
     ;; uint8 _dist
       (write-byte _dist s)
     ;; uint8 _dire
       (write-byte _dire s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _wakewords
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _wakewords (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint8 _dist
     (setq _dist (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _dire
     (setq _dire (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get learning_topic::Wakebot :md5sum-) "e878c0c5a099028e507e37a548426dec")
(setf (get learning_topic::Wakebot :datatype-) "learning_topic/Wakebot")
(setf (get learning_topic::Wakebot :definition-)
      "string wakewords
uint8  dist
uint8  dire


")



(provide :learning_topic/Wakebot "e878c0c5a099028e507e37a548426dec")


