import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart' hide Action;

import 'action.dart';
import 'state.dart';

Effect<MainState> buildEffect() {
  return combineEffects(<Object, Effect<MainState>>{
    MainAction.switchClick: _onSwitchClick,
  });
}

void _onSwitchClick(Action action, Context<MainState> ctx) {
  final index = action.payload;
  switch (index) {
    case 0:
      ctx.dispatch(MainActionCreator.onSetLeading(IconButton(
          icon: Icon(Icons.filter_alt),
          color: Colors.white,
          onPressed: () {})));
      ctx.dispatch(MainActionCreator.onSetRightWidget(
          IconButton(icon: Icon(Icons.search), onPressed: () {})));
      break;
    case 1:
      ctx.dispatch(MainActionCreator.onSetLeading(Container()));
      ctx.dispatch(MainActionCreator.onSetRightWidget(null));
      break;
  }
  ctx.dispatch(MainActionCreator.onSwitchIndex(index));
}
