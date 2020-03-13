// Auto-generated. Do not edit!

// (in-package turtle_control.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class SpawnTurtleRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.tur_name = null;
      this.pose_x = null;
      this.pose_y = null;
      this.tur_theta = null;
    }
    else {
      if (initObj.hasOwnProperty('tur_name')) {
        this.tur_name = initObj.tur_name
      }
      else {
        this.tur_name = '';
      }
      if (initObj.hasOwnProperty('pose_x')) {
        this.pose_x = initObj.pose_x
      }
      else {
        this.pose_x = 0.0;
      }
      if (initObj.hasOwnProperty('pose_y')) {
        this.pose_y = initObj.pose_y
      }
      else {
        this.pose_y = 0.0;
      }
      if (initObj.hasOwnProperty('tur_theta')) {
        this.tur_theta = initObj.tur_theta
      }
      else {
        this.tur_theta = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SpawnTurtleRequest
    // Serialize message field [tur_name]
    bufferOffset = _serializer.string(obj.tur_name, buffer, bufferOffset);
    // Serialize message field [pose_x]
    bufferOffset = _serializer.float64(obj.pose_x, buffer, bufferOffset);
    // Serialize message field [pose_y]
    bufferOffset = _serializer.float64(obj.pose_y, buffer, bufferOffset);
    // Serialize message field [tur_theta]
    bufferOffset = _serializer.float64(obj.tur_theta, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SpawnTurtleRequest
    let len;
    let data = new SpawnTurtleRequest(null);
    // Deserialize message field [tur_name]
    data.tur_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [pose_x]
    data.pose_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [pose_y]
    data.pose_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [tur_theta]
    data.tur_theta = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.tur_name.length;
    return length + 28;
  }

  static datatype() {
    // Returns string type for a service object
    return 'turtle_control/SpawnTurtleRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2e81a9a00b646492d0f293dca33919db';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string tur_name
    float64  pose_x
    float64  pose_y
    float64  tur_theta
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SpawnTurtleRequest(null);
    if (msg.tur_name !== undefined) {
      resolved.tur_name = msg.tur_name;
    }
    else {
      resolved.tur_name = ''
    }

    if (msg.pose_x !== undefined) {
      resolved.pose_x = msg.pose_x;
    }
    else {
      resolved.pose_x = 0.0
    }

    if (msg.pose_y !== undefined) {
      resolved.pose_y = msg.pose_y;
    }
    else {
      resolved.pose_y = 0.0
    }

    if (msg.tur_theta !== undefined) {
      resolved.tur_theta = msg.tur_theta;
    }
    else {
      resolved.tur_theta = 0.0
    }

    return resolved;
    }
};

class SpawnTurtleResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.result = null;
    }
    else {
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SpawnTurtleResponse
    // Serialize message field [result]
    bufferOffset = _serializer.string(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SpawnTurtleResponse
    let len;
    let data = new SpawnTurtleResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.result.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'turtle_control/SpawnTurtleResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c22f2a1ed8654a0b365f1bb3f7ff2c0f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string result
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SpawnTurtleResponse(null);
    if (msg.result !== undefined) {
      resolved.result = msg.result;
    }
    else {
      resolved.result = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: SpawnTurtleRequest,
  Response: SpawnTurtleResponse,
  md5sum() { return 'a2d95187599909408d4f95d87ec9484c'; },
  datatype() { return 'turtle_control/SpawnTurtle'; }
};
