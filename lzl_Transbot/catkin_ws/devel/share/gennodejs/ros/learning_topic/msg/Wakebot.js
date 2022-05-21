// Auto-generated. Do not edit!

// (in-package learning_topic.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Wakebot {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.wakewords = null;
      this.dist = null;
      this.dire = null;
    }
    else {
      if (initObj.hasOwnProperty('wakewords')) {
        this.wakewords = initObj.wakewords
      }
      else {
        this.wakewords = '';
      }
      if (initObj.hasOwnProperty('dist')) {
        this.dist = initObj.dist
      }
      else {
        this.dist = 0;
      }
      if (initObj.hasOwnProperty('dire')) {
        this.dire = initObj.dire
      }
      else {
        this.dire = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Wakebot
    // Serialize message field [wakewords]
    bufferOffset = _serializer.string(obj.wakewords, buffer, bufferOffset);
    // Serialize message field [dist]
    bufferOffset = _serializer.uint8(obj.dist, buffer, bufferOffset);
    // Serialize message field [dire]
    bufferOffset = _serializer.uint8(obj.dire, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Wakebot
    let len;
    let data = new Wakebot(null);
    // Deserialize message field [wakewords]
    data.wakewords = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [dist]
    data.dist = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [dire]
    data.dire = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.wakewords.length;
    return length + 6;
  }

  static datatype() {
    // Returns string type for a message object
    return 'learning_topic/Wakebot';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e878c0c5a099028e507e37a548426dec';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string wakewords
    uint8  dist
    uint8  dire
    
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Wakebot(null);
    if (msg.wakewords !== undefined) {
      resolved.wakewords = msg.wakewords;
    }
    else {
      resolved.wakewords = ''
    }

    if (msg.dist !== undefined) {
      resolved.dist = msg.dist;
    }
    else {
      resolved.dist = 0
    }

    if (msg.dire !== undefined) {
      resolved.dire = msg.dire;
    }
    else {
      resolved.dire = 0
    }

    return resolved;
    }
};

module.exports = Wakebot;
