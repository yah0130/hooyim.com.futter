import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<MainState> buildReducer() {
  return asReducer(
    <Object, Reducer<MainState>>{
      MainAction.setTitle: _onSetTitleAction,
      MainAction.setLeading: _onSetLeadingAction,
      MainAction.setRightWidget: _onSetRightWidgetAction,
      MainAction.switchIndex: _onSwitchIndexAction,
    },
  );
}

MainState _onSetTitleAction(MainState state, Action action) {
  final title = action.payload;
  return state.clone()
    ..title = title;
}

MainState _onSetLeadingAction(MainState state, Action action) {
  final leading = action.payload;
  return state.clone()
    ..leading = leading;
}

MainState _onSetRightWidgetAction(MainState state, Action action) {
  final rightWidget = action.payload;
  return state.clone()
    ..rightWidget = rightWidget;
}

MainState _onSwitchIndexAction(MainState state, Action action) {
  final index = action.payload;
  String title;
  switch (index) {
    case 0:
      title = "明殿";
      break;
    case 1:
      title = "狂浪生";
      break;
  }
  return state.clone()
    ..index = index
    ..title = title;
}
