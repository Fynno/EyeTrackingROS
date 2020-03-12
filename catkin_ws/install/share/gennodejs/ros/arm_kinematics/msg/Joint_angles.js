// Auto-generated. Do not edit!

// (in-package arm_kinematics.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Joint_angles {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.t1 = null;
      this.t2 = null;
      this.t3 = null;
    }
    else {
      if (initObj.hasOwnProperty('t1')) {
        this.t1 = initObj.t1
      }
      else {
        this.t1 = 0;
      }
      if (initObj.hasOwnProperty('t2')) {
        this.t2 = initObj.t2
      }
      else {
        this.t2 = 0;
      }
      if (initObj.hasOwnProperty('t3')) {
        this.t3 = initObj.t3
      }
      else {
        this.t3 = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Joint_angles
    // Serialize message field [t1]
    bufferOffset = _serializer.int64(obj.t1, buffer, bufferOffset);
    // Serialize message field [t2]
    bufferOffset = _serializer.int64(obj.t2, buffer, bufferOffset);
    // Serialize message field [t3]
    bufferOffset = _serializer.int64(obj.t3, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Joint_angles
    let len;
    let data = new Joint_angles(null);
    // Deserialize message field [t1]
    data.t1 = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [t2]
    data.t2 = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [t3]
    data.t3 = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'arm_kinematics/Joint_angles';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '746144a4e9cc3ba3202f5653eb074672';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int64 t1
    int64 t2
    int64 t3
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Joint_angles(null);
    if (msg.t1 !== undefined) {
      resolved.t1 = msg.t1;
    }
    else {
      resolved.t1 = 0
    }

    if (msg.t2 !== undefined) {
      resolved.t2 = msg.t2;
    }
    else {
      resolved.t2 = 0
    }

    if (msg.t3 !== undefined) {
      resolved.t3 = msg.t3;
    }
    else {
      resolved.t3 = 0
    }

    return resolved;
    }
};

module.exports = Joint_angles;
