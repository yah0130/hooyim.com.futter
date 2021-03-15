import 'dart:ui';

import 'package:fish_redux/fish_redux.dart';
import 'package:hooyim/global/base.dart';

class GlobalState implements GlobalBaseState, Cloneable<GlobalState> {
  @override
  Locale localization;

  @override
  Color themeColor;

  @override
  GlobalState clone() {
    return GlobalState()
      ..localization = localization
      ..themeColor = themeColor;
  }
}
