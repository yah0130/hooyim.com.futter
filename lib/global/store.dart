import 'dart:ui';

import 'package:fish_redux/fish_redux.dart';
import 'package:hooyim/global/global.dart';

class GlobalStore {
  // Store 用来存储全局状态 GlobalState，当刷新状态值的时候，通过 // store 的 dispatch 发送相关的 action 即可做出相应的调整
  static Store<GlobalState> _globalStore;

  static Store<GlobalState> get store => _globalStore ??= createStore(
        GlobalState(),
        buildReducer(), // reducer 用来刷新状态值
      );
}

enum GlobalAction { changeThemeColor, changeLocale, changeFontFamily }

class GlobalActionCreator {
  static Action onChangeThemeColor(Color themeColor) {
    return Action(GlobalAction.changeThemeColor, payload: themeColor);
  }

  static Action onChangeLocale(Locale localization) {
    return Action(GlobalAction.changeLocale, payload: localization);
  }
}

Reducer<GlobalState> buildReducer() {
  return asReducer(<Object, Reducer<GlobalState>>{
    GlobalAction.changeThemeColor: _onThemeChange,
    GlobalAction.changeLocale: _onLocalChange,
  });
}

GlobalState _onThemeChange(GlobalState state, Action action) {
  return state.clone()..themeColor = action.payload;
}

GlobalState _onLocalChange(GlobalState state, Action action) {
  return state.clone()..localization = action.payload;
}
