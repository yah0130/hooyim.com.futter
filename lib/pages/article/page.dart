import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class ArticlePage extends Page<ArticleState, Map<String, dynamic>> {
  ArticlePage()
      : super(
          initState: initState,
          effect: buildEffect(),
          reducer: buildReducer(),
          view: buildView,
          dependencies: Dependencies<ArticleState>(
              adapter: null, slots: <String, Dependent<ArticleState>>{}),
          middleware: <Middleware<ArticleState>>[],
        );
}
