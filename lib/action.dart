import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart' hide Action;

//TODO replace with your own action
enum MainAction {
  setTitle,
  setLeading,
  setRightWidget,
  switchIndex,
  switchClick
}

class MainActionCreator {
  static Action onSetTitle(String title) {
    return Action(MainAction.setTitle, payload: title);
  }

  static Action onSetLeading(Widget leading) {
    return Action(MainAction.setLeading, payload: leading);
  }

  static Action onSetRightWidget(Widget rightWidget) {
    return Action(MainAction.setRightWidget, payload: rightWidget);
  }

  static Action onSwitchIndex(int index) {
    return Action(MainAction.switchIndex, payload: index);
  }

  static Action onSwitchClick(int index) {
    return Action(MainAction.switchClick, payload: index);
  }
}
