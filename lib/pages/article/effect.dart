import 'package:fish_redux/fish_redux.dart';
import 'package:hooyim/api/app_api.dart';
import 'package:hooyim/api/bean/article_detail_entity.dart';
import 'package:hooyim/api/bean/comment_entity.dart';
import 'package:hooyim/net/result_data.dart';
import 'package:hooyim/pages/article/action.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'state.dart';

Effect<ArticleState> buildEffect() {
  return combineEffects(<Object, Effect<ArticleState>>{
    Lifecycle.initState: _init,
    ArticleAction.likePage: _onLikePage
  });
}

void _init(Action action, Context<ArticleState> ctx) {
  Future.wait([
    _getArticle(ctx.state.id),
    _getComments(
        {'page': 1, 'per_page': 88, 'sort': -1, 'post_id': ctx.state.id}),
    _getIsLiked(ctx.state.id)
  ]).then((values) {
    ctx.dispatch(ArticleActionCreator.onSetDetailData({
      'detail': (values[0] as ArticleDetailEntity),
      'comments': (values[1] as CommentEntity),
      'isLiked': values[2]
    }));
    ctx.broadcast(ArticleActionCreator.onUpdateHomeBrowser(ctx.state.id));
  });
}

void _onLikePage(Action action, Context<ArticleState> ctx) {
  _getIsLiked(action.payload).then((result) {
    if (!result) {
      _likePage(action.payload).then((res) {
        if (res) {
          int likes = ctx.state.meta.likes + 1;
          ctx.broadcast(ArticleActionCreator.onUpdateHomeLike(
              {'id': action.payload, 'likes': likes}));
          ctx.dispatch(ArticleActionCreator.onUpdateLike(
              {'id': action.payload, 'likes': likes}));
        }
      });
    }
  });
}

Future<bool> _likePage(id) async {
  ResultData resultData = await AppApi.getInstance().likePage(id, false);
  return resultData.isSuccess();
}

Future<ArticleDetailEntity> _getArticle(id) async {
  ResultData resultData = await AppApi.getInstance().getArticle(id, false);
  ArticleDetailEntity articleEntity = ArticleDetailEntity();
  if (resultData.isSuccess()) {
    articleEntity.fromJson(resultData.response);
  }
  return articleEntity;
}

Future<CommentEntity> _getComments(Map<String, dynamic> param) async {
  ResultData resultData = await AppApi.getInstance().getComments(param, false);
  CommentEntity commentEntity = CommentEntity();
  if (resultData.isSuccess()) {
    commentEntity.fromJson(resultData.response);
  }
  return commentEntity;
}

Future<bool> _getIsLiked(int id) async {
  List<String> likedList;

  SharedPreferences prefs = await SharedPreferences.getInstance();
  likedList = prefs.getStringList('likedList');
  if (likedList == null) {
    likedList = [];
  }
  return likedList.contains(id.toString());
}
