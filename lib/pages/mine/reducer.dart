import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<MineState> buildReducer() {
  return asReducer(
    <Object, Reducer<MineState>>{
      MineAction.setUserInfo: _onSetUserInfoAction,
    },
  );
}

MineState _onSetUserInfoAction(MineState state, Action action) {
  final MineState newState = state.clone()..userInfoEntity = action.payload;
  return newState;
}
