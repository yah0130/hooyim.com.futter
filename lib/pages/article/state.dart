import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:hooyim/api/bean/article_detail_entity.dart';
import 'package:hooyim/api/bean/article_entity.dart';
import 'package:hooyim/api/bean/comment_entity.dart';

class ArticleState implements Cloneable<ArticleState> {
  String title;
  String description;
  int id;
  String updateAt;
  String thumb;
  ArticleResultDataMeta meta;
  ScrollController controller;
  bool isLiked;
  ArticleDetailEntity detail;
  CommentEntity comments;
  bool loading;

  @override
  ArticleState clone() {
    return ArticleState()
      ..title = title
      ..description = description
      ..id = id
      ..updateAt = updateAt
      ..thumb = thumb
      ..meta = meta
      ..controller = controller
      ..isLiked = isLiked
      ..detail = detail
      ..comments = comments
      ..loading = loading;
  }
}

ArticleState initState(Map<String, dynamic> args) {
  return ArticleState()
    ..title = args['title']
    ..description = args['description']
    ..id = args['id']
    ..updateAt = args['updateAt']
    ..thumb = args['thumb']
    ..meta = args['meta']
    ..comments = CommentEntity()
    ..detail = ArticleDetailEntity()
    ..controller = ScrollController(keepScrollOffset: false)
    ..loading = true
    ..isLiked = false;
}
