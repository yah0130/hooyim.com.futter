import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_easyrefresh/easy_refresh.dart';
import 'package:hooyim/api/bean/article_entity.dart';

class HomeState implements Cloneable<HomeState> {
  ArticleEntity articleEntity;
  EasyRefreshController controller;

  @override
  HomeState clone() {
    return HomeState()
      ..articleEntity = articleEntity
      ..controller = controller;
  }
}

HomeState initState(Map<String, dynamic> args) {
  return HomeState()
    ..articleEntity = ArticleEntity()
    ..controller = EasyRefreshController();
}
