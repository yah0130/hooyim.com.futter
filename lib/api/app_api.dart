library basicnetservice;

import 'package:hooyim/net/result_data.dart';

import 'app_net_service.dart';

class AppApi extends AppNetService {
  /// 博主信息
  static const String _ADMIN = "/auth/admin";
  /// 文章
  static const String _ARTICLE = "/article";

  /// 评论
  static const String _COMMENT = "/comment";

  /// 喜欢
  static const String _LIKE = "/like/article";

  AppApi._();

  static AppApi _instance;

  static AppApi getInstance() {
    if (_instance == null) {
      _instance = AppApi._();
    }
    return _instance;
  }

  Future<ResultData> getArticles(
      Map<String, dynamic> param, bool showProgress) async {
    ResultData resultData =
        await get(_ARTICLE, params: param, showLoad: showProgress);
    return resultData;
  }

  Future<ResultData> getArticle(id, bool showProgress) async {
    ResultData resultData =
        await get('$_ARTICLE/$id', params: {}, showLoad: showProgress);
    return resultData;
  }

  Future<ResultData> getComments(param, bool showProgress) async {
    ResultData resultData =
        await get('$_COMMENT', params: param, showLoad: showProgress);
    return resultData;
  }

  Future<ResultData> likePage(id, bool showProgress) async {
    ResultData resultData =
        await patch('$_LIKE', params: {'article_id': id}, showLoad: showProgress);
    return resultData;
  }

  Future<ResultData> getUserInfo(
      Map<String, dynamic> param, bool showProgress) async {
    ResultData resultData =
    await get(_ADMIN, params: param, showLoad: showProgress);
    return resultData;
  }
}
