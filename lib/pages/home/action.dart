import 'package:fish_redux/fish_redux.dart';
import 'package:hooyim/api/bean/article_entity.dart';

//TODO replace with your own action
enum HomeAction {
  getArticles,
  refresh,
  updateArticleEntity,
  loadMore,
  appendArticle,
  updateArticleLike
}

class HomeActionCreator {
  static Action onGetArticles(Map<String, dynamic> params) {
    return Action(HomeAction.getArticles, payload: params);
  }

  static Action onLoadMore(Map<String, dynamic> params) {
    return Action(HomeAction.loadMore, payload: params);
  }

  static Action onAppendArticle(List<ArticleResultData> list) {
    return Action(HomeAction.appendArticle, payload: list);
  }

  static Action onArticleRefresh() {
    return Action(HomeAction.refresh);
  }

  static Action onUpdateArticleEntity(ArticleEntity bean) {
    return Action(HomeAction.updateArticleEntity, payload: bean);
  }

  static Action onUpdateArticleLike(int id) {
    return Action(HomeAction.updateArticleLike, payload: id);
  }
}
