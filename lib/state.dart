import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

class MainState implements Cloneable<MainState> {
  String title;
  Widget leading;
  Widget rightWidget;
  int index;

  @override
  MainState clone() {
    return MainState()
      ..title = title
      ..leading = leading
      ..rightWidget = rightWidget
      ..index = index;
  }
}

MainState initState(Map<String, dynamic> args) {
  return MainState()
    ..title = '明殿'
    ..leading = IconButton(
        icon: Icon(Icons.filter_alt), color: Colors.white, onPressed: () {})
    ..rightWidget = IconButton(icon: Icon(Icons.search), onPressed: () {})
    ..index = 0;
}
