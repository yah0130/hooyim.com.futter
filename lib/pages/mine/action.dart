import 'package:fish_redux/fish_redux.dart';
import 'package:hooyim/api/bean/user_info_entity.dart';

//TODO replace with your own action
enum MineAction { setUserInfo }

class MineActionCreator {
  static Action onSetUserInfoAction(UserInfoEntity bean) {
    return Action(MineAction.setUserInfo, payload: bean);
  }
}
