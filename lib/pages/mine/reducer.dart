import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<MineState> buildReducer() {
  return asReducer(
    <Object, Reducer<MineState>>{
      MineAction.setBaseInfo: _onSetBaseInfoAction,
    },
  );
}

MineState _onSetBaseInfoAction(MineState state, Action action) {
  final MineState newState = state.clone()
    ..userInfoEntity = action.payload[0]
    ..statisticEntity = action.payload[1];
  return newState;
}
