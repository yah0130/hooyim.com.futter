import 'package:fish_redux/fish_redux.dart';
import 'package:hooyim/api/bean/article_entity.dart';

import 'action.dart';
import 'state.dart';

Reducer<HomeState> buildReducer() {
  return asReducer(
    <Object, Reducer<HomeState>>{
      HomeAction.updateArticleEntity: _onUpdateArticleEntity,
      HomeAction.appendArticle: _onAppendArticle,
      HomeAction.updateArticleLike: _onUpdateArticleLike,
      HomeAction.updateArticleBrowser: _onUpdateArticleBrowser
    },
  );
}

HomeState _onUpdateArticleEntity(HomeState state, Action action) {
  final HomeState newState = state.clone()..articleEntity = action.payload;
  return newState;
}

HomeState _onAppendArticle(HomeState state, Action action) {
  final HomeState newState = state.clone()
    ..articleEntity.result.data.addAll(action.payload);
  return newState;
}

HomeState _onUpdateArticleLike(HomeState state, Action action) {
  final HomeState newState = state.clone();
  ArticleResultData data = newState.articleEntity.result.data
      .firstWhere((data) => data.id == action.payload['id']);
  data.meta.likes = action.payload['likes'];
  return newState;
}

HomeState _onUpdateArticleBrowser(HomeState state, Action action) {
  final HomeState newState = state.clone();
  ArticleResultData data = newState.articleEntity.result.data
      .firstWhere((data) => data.id == action.payload);
  data.meta.views += 1;
  return newState;
}
