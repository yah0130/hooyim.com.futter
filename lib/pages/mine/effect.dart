import 'package:fish_redux/fish_redux.dart';
import 'package:hooyim/api/app_api.dart';
import 'package:hooyim/api/bean/statistic_entity.dart';
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
  Future.wait([_getUserInfo(), _fetchStatistic()]).then((beans) {
    ctx.dispatch(MineActionCreator.onSetBaseInfoAction(beans));
  });
  _getUserInfo().then((bean) {});
}

Future<UserInfoEntity> _getUserInfo() async {
  ResultData resultData = await AppApi.getInstance().getUserInfo({}, false);
  UserInfoEntity userInfoEntity = UserInfoEntity();
  if (resultData.isSuccess()) {
    userInfoEntity.fromJson(resultData.response);
  }
  return userInfoEntity;
}

Future<StatisticEntity> _fetchStatistic() async {
  ResultData resultData = await AppApi.getInstance().fetchStatistic({}, false);
  StatisticEntity statisticEntity = StatisticEntity();
  if (resultData.isSuccess()) {
    statisticEntity.fromJson(resultData.response);
  }
  return statisticEntity;
}
