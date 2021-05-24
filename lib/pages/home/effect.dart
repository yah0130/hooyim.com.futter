import 'package:fish_redux/fish_redux.dart';
import 'package:hooyim/api/app_api.dart';
import 'package:hooyim/api/bean/article_entity.dart';
import 'package:hooyim/net/result_data.dart';
import 'package:hooyim/pages/article/action.dart';

import 'action.dart';
import 'state.dart';

Effect<HomeState> buildEffect() {
  return combineEffects(<Object, Effect<HomeState>>{
    HomeAction.refresh: _onArticleRefresh,
    HomeAction.getArticles: _onGetArticle,
    HomeAction.loadMore: _onLoadMore,
    ArticleAction.updateHomeLike: _onUpdateArticleLike,
    ArticleAction.updateHomeBrowser: _onUpdateArticleBrowser
  });
}

void _onArticleRefresh(Action action, Context<HomeState> ctx) {
  ctx.dispatch(HomeActionCreator.onGetArticles({'page': 1}));
}

void _onUpdateArticleLike(Action action, Context<HomeState> ctx) {
  ctx.dispatch(HomeActionCreator.onUpdateArticleLike(action.payload));
}

void _onUpdateArticleBrowser(Action action, Context<HomeState> ctx) {
  ctx.dispatch(HomeActionCreator.onUpdateArticleBrowser(action.payload));
}

void _onLoadMore(Action action, Context<HomeState> ctx) {
  _getArticles(action.payload).then((bean) {
    if (bean.result.pagination.currentPage ==
        bean.result.pagination.totalPage) {
      ctx.state.controller.finishLoad(success: true, noMore: true);
    } else {
      ctx.state.controller.finishLoad(success: true, noMore: false);
    }
    ctx.dispatch(HomeActionCreator.onAppendArticle(bean.result.data));
  });
}

void _onGetArticle(Action action, Context<HomeState> ctx) {
  _getArticles(action.payload).then((bean) {
    ctx.state.controller.finishRefresh(success: true);
    if (bean.result.pagination.currentPage ==
        bean.result.pagination.totalPage) {
      ctx.state.controller.finishLoad(success: true, noMore: true);
    } else {
      ctx.state.controller.finishLoad(success: true, noMore: false);
    }
    ctx.dispatch(HomeActionCreator.onUpdateArticleEntity(bean));
  });
}

Future<ArticleEntity> _getArticles(Map<String, dynamic> param) async {
  ResultData resultData = await AppApi.getInstance().getArticles(param, false);
  ArticleEntity articleEntity = ArticleEntity();
  if (resultData.isSuccess()) {
    articleEntity.fromJson(resultData.response);
  }
  return articleEntity;
}
