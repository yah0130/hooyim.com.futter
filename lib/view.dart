import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:hooyim/action.dart';
import 'package:hooyim/common/baseTitleBar.dart';
import 'package:hooyim/common/baseViewBar.dart';
import 'package:hooyim/pages/home/page.dart';
import 'package:hooyim/pages/mine/page.dart';

import 'state.dart';

Widget buildView(MainState state, Dispatch dispatch, ViewService viewService) {
  return Scaffold(
    appBar: BaseViewBar(
        childView: BaseTitleBar(
            title: state.title,
            leading: state.leading,
            rightWidget: state.rightWidget),
        preferredSize: Size.fromHeight(50.0)),
    body: IndexedStack(
      children: <Widget>[
        HomePage().buildPage({}),
        MinePage().buildPage({}),
      ],
      index: state.index,
    ),
    bottomNavigationBar: BottomNavigationBar(
      selectedIconTheme: IconThemeData(color: Color.fromRGBO(54, 209, 193, 1)),
      unselectedIconTheme: IconThemeData(color: Colors.grey),
      selectedLabelStyle: TextStyle(
          foreground: Paint()..color = Color.fromRGBO(54, 209, 193, 1)),
      unselectedLabelStyle: TextStyle(foreground: Paint()..color = Colors.grey),
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.article), label: '明殿'),
        BottomNavigationBarItem(icon: Icon(Icons.alternate_email), label: '狂浪生')
      ],
      fixedColor: Colors.blue,
      currentIndex: state.index,
      onTap: (index) {
        dispatch(MainActionCreator.onSwitchClick(index));
      },
    ),
  );
}
