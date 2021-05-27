import 'package:fish_redux/fish_redux.dart';
import 'package:hooyim/api/bean/statistic_entity.dart';
import 'package:hooyim/api/bean/user_info_entity.dart';

class MineState implements Cloneable<MineState> {
  UserInfoEntity userInfoEntity;
  StatisticEntity statisticEntity;

  @override
  MineState clone() {
    return MineState()
      ..userInfoEntity = userInfoEntity
      ..statisticEntity = statisticEntity;
  }
}

MineState initState(Map<String, dynamic> args) {
  return MineState()
    ..userInfoEntity = UserInfoEntity()
    ..statisticEntity = StatisticEntity();
}
