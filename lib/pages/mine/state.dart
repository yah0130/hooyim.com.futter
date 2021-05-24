import 'package:fish_redux/fish_redux.dart';
import 'package:hooyim/api/bean/user_info_entity.dart';

class MineState implements Cloneable<MineState> {
  UserInfoEntity userInfoEntity;

  @override
  MineState clone() {
    return MineState()..userInfoEntity = userInfoEntity;
  }
}

MineState initState(Map<String, dynamic> args) {
  return MineState()..userInfoEntity = UserInfoEntity();
}
