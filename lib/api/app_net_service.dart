library basicnetservice;

import 'package:flutter/widgets.dart';
import 'package:hooyim/net/net_service.dart';

import 'widget/dialog_param.dart';
import 'widget/loading_dialog.dart';

class AppNetService extends NetService {

  AppNetService();

  @override
  request(String url, {Method method, Map<String, dynamic> params, var file, String fileName,String fileSavePath, BuildContext context, bool showLoad = false}) async {
    /// 传参进行统一处理, 加上基本参数
    Map<String, dynamic> basicParam = await getBasicParam();
    if (params != null) {
      basicParam.addAll(params);
    }
    ShowParam showParam = new ShowParam(show: showLoad, barrierDismissible: false, showBackground: false);
    LoadingDialogUtil.showLoadingDialog(context, showParam);
    ResultData resultData = await super.request(url,method: method, params: basicParam, file: file, fileName: fileName,fileSavePath: fileSavePath);
    showParam.pop();

    return resultData;
  }

  @override
  getBasicUrl() {
    const bool inProduction = const bool.fromEnvironment("dart.vm.product");
    return inProduction ? 'https://api.hooyim.com' : 'http://localhost:8050';
  }

  @override
  getHeaders() async{
    // TODO: implement getHeaders
    Map<String, dynamic> headers;
    return headers;
  }

  Future<Map<String, dynamic>> getBasicParam() async {
    Map<String, dynamic> basicParam = {};
    return basicParam;
  }
}