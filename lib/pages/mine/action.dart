import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum MineAction { setBaseInfo }

class MineActionCreator {
  static Action onSetBaseInfoAction(List<Object> beans) {
    return Action(MineAction.setBaseInfo, payload: beans);
  }
}
