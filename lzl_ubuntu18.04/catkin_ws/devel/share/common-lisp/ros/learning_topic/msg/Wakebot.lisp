; Auto-generated. Do not edit!


(cl:in-package learning_topic-msg)


;//! \htmlinclude Wakebot.msg.html

(cl:defclass <Wakebot> (roslisp-msg-protocol:ros-message)
  ((wakewords
    :reader wakewords
    :initarg :wakewords
    :type cl:string
    :initform "")
   (dist
    :reader dist
    :initarg :dist
    :type cl:fixnum
    :initform 0)
   (dire
    :reader dire
    :initarg :dire
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Wakebot (<Wakebot>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Wakebot>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Wakebot)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name learning_topic-msg:<Wakebot> is deprecated: use learning_topic-msg:Wakebot instead.")))

(cl:ensure-generic-function 'wakewords-val :lambda-list '(m))
(cl:defmethod wakewords-val ((m <Wakebot>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader learning_topic-msg:wakewords-val is deprecated.  Use learning_topic-msg:wakewords instead.")
  (wakewords m))

(cl:ensure-generic-function 'dist-val :lambda-list '(m))
(cl:defmethod dist-val ((m <Wakebot>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader learning_topic-msg:dist-val is deprecated.  Use learning_topic-msg:dist instead.")
  (dist m))

(cl:ensure-generic-function 'dire-val :lambda-list '(m))
(cl:defmethod dire-val ((m <Wakebot>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader learning_topic-msg:dire-val is deprecated.  Use learning_topic-msg:dire instead.")
  (dire m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Wakebot>) ostream)
  "Serializes a message object of type '<Wakebot>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'wakewords))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'wakewords))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'dist)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'dire)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Wakebot>) istream)
  "Deserializes a message object of type '<Wakebot>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'wakewords) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'wakewords) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'dist)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'dire)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Wakebot>)))
  "Returns string type for a message object of type '<Wakebot>"
  "learning_topic/Wakebot")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Wakebot)))
  "Returns string type for a message object of type 'Wakebot"
  "learning_topic/Wakebot")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Wakebot>)))
  "Returns md5sum for a message object of type '<Wakebot>"
  "e878c0c5a099028e507e37a548426dec")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Wakebot)))
  "Returns md5sum for a message object of type 'Wakebot"
  "e878c0c5a099028e507e37a548426dec")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Wakebot>)))
  "Returns full string definition for message of type '<Wakebot>"
  (cl:format cl:nil "string wakewords~%uint8  dist~%uint8  dire~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Wakebot)))
  "Returns full string definition for message of type 'Wakebot"
  (cl:format cl:nil "string wakewords~%uint8  dist~%uint8  dire~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Wakebot>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'wakewords))
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Wakebot>))
  "Converts a ROS message object to a list"
  (cl:list 'Wakebot
    (cl:cons ':wakewords (wakewords msg))
    (cl:cons ':dist (dist msg))
    (cl:cons ':dire (dire msg))
))
