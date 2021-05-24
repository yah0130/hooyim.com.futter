import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum ArticleAction { setDetailData, likePage, updateLike, updateHomeLike }

class ArticleActionCreator {
  static Action onSetDetailData(Map<String, dynamic> data) {
    return Action(ArticleAction.setDetailData, payload: data);
  }

  static Action onUpdateLike(int id) {
    return Action(ArticleAction.updateLike, payload: id);
  }

  static Action onUpdateHomeLike(int id) {
    return Action(ArticleAction.updateHomeLike, payload: id);
  }

  static Action onLikePage(int id) {
    return Action(ArticleAction.likePage, payload: id);
  }
}
