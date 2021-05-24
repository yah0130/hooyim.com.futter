import 'package:fish_redux/fish_redux.dart';
import 'package:hooyim/api/bean/article_detail_entity.dart';
import 'package:hooyim/api/bean/comment_entity.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'action.dart';
import 'state.dart';

Reducer<ArticleState> buildReducer() {
  return asReducer(
    <Object, Reducer<ArticleState>>{
      ArticleAction.setDetailData: _onSetDetailData,
      ArticleAction.updateLike: _onUpdateLike,
    },
  );
}

ArticleState _onSetDetailData(ArticleState state, Action action) {
  ArticleDetailEntity detail = action.payload['detail'];
  CommentEntity comments = action.payload['comments'];
  bool isLiked = action.payload['isLiked'];
  final ArticleState newState = state.clone()
    ..detail = detail
    ..comments = comments
    ..isLiked = isLiked ?? false
    ..loading = false;
  return newState;
}

ArticleState _onUpdateLike(ArticleState state, Action action) {
  final ArticleState newState = state.clone()
    ..meta.likes = action.payload['likes']
    ..isLiked = true;
  _setLiked(action.payload['id']);
  return newState;
}

void _setLiked(int id) async {
  List<String> likedList;

  SharedPreferences prefs = await SharedPreferences.getInstance();
  likedList = prefs.getStringList('likedList');
  if (likedList == null) {
    likedList = [];
  }
  likedList.add(id.toString());
  prefs.setStringList('likedList', likedList);
}
