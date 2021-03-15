import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'net_config.dart';
class ResultData {
  Map<String, dynamic> response; // 所有返回值
  dynamic result; // 请求回来的data, 可能是list也可能是map
  var status; // 服务器的状态码
  String message; // 服务器给的提示信息
  String url = "";

  ResultData(this.message, this.result, {this.url = ""});

  ResultData.response(this.response, {this.url = ""}) {
    this.status = this.response["status"];
    this.message = this.response["message"];
    this.result = this.response["result"];
  }

  bool isFail() {
    bool success = isSuccess();
    return !success;
  }

  bool isSuccess() {
    bool success = status == "success";
    if (!success) {
      mDebugPrint("Not success for $url:$result,msg:$message");
    }
    return success;
  }

  /// 失败情况下弹提示
  bool toast() {
    if (isFail()) {
      Fluttertoast.showToast(msg: message);
      return true;
    } else {
      return false;
    }
  }

  mDebugPrint(String log) {
    if (NetConfig.DEBUG) {
      debugPrint(log);
    }
  }
}