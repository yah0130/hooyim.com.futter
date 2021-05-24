import 'package:dio/dio.dart';

class DioInstance {
  static Dio _instance;

  static Dio createInstance() {
    if (_instance == null) {
      BaseOptions options = BaseOptions(
          // 15s 超时时间
          connectTimeout: 15000,
          receiveTimeout: 15000);
      _instance = new Dio(options);
    }
    return _instance;
  }
}
