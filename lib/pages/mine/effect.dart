import 'package:fish_redux/fish_redux.dart';
import 'package:hooyim/api/app_api.dart';
import 'package:hooyim/api/bean/user_info_entity.dart';
import 'package:hooyim/net/result_data.dart';
import 'package:hooyim/pages/mine/action.dart';

import 'state.dart';

Effect<MineState> buildEffect() {
  return combineEffects(<Object, Effect<MineState>>{
    Lifecycle.initState: _init,
  });
}

void _init(Action action, Context<MineState> ctx) {
  _getUserInfo().then((bean) {
    ctx.dispatch(MineActionCreator.onSetUserInfoAction(bean));
  });
}

Future<UserInfoEntity> _getUserInfo() async {
  ResultData resultData = await AppApi.getInstance().getUserInfo({}, false);
  UserInfoEntity userInfoEntity = UserInfoEntity();
  if (resultData.isSuccess()) {
    userInfoEntity.fromJson(resultData.response);
  }
  return userInfoEntity;
}