import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<HomeState> buildReducer() {
  return asReducer(
    <Object, Reducer<HomeState>>{
      HomeAction.updateArticleEntity: _onUpdateArticleEntity,
      HomeAction.appendArticle: _onAppendArticle
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
