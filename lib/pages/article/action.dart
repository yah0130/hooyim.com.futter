import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum ArticleAction {
  setDetailData,
  likePage,
  updateLike,
  updateHomeLike,
  updateHomeBrowser
}

class ArticleActionCreator {
  static Action onSetDetailData(Map<String, dynamic> data) {
    return Action(ArticleAction.setDetailData, payload: data);
  }

  static Action onUpdateLike(Map<String, dynamic> data) {
    return Action(ArticleAction.updateLike, payload: data);
  }

  static Action onUpdateHomeLike(Map<String, dynamic> data) {
    return Action(ArticleAction.updateHomeLike, payload: data);
  }

  static Action onLikePage(int id) {
    return Action(ArticleAction.likePage, payload: id);
  }

  static Action onUpdateHomeBrowser(int id) {
    return Action(ArticleAction.updateHomeBrowser, payload: id);
  }
}
