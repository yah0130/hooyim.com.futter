import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BaseTitleBar extends StatelessWidget {
  String title;
  String description;
  Widget leading;
  Widget rightWidget;
  Decoration decoration;

  BaseTitleBar(
      {this.title,
      this.description,
      this.leading,
      this.rightWidget,
      this.decoration});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      flexibleSpace: Container(
        decoration: decoration ??
            BoxDecoration(
                gradient: LinearGradient(colors: [
              Color.fromRGBO(26, 155, 214, 1),
              Color.fromRGBO(54, 209, 193, 1)
            ])),
      ),
      leading: leading ??
          IconButton(
              icon: Icon(Icons.arrow_back_ios),
              color: Colors.black,
              onPressed: () {
                Navigator.pop(context);
              }),
      title: Column(
        crossAxisAlignment: description != null
            ? CrossAxisAlignment.start
            : CrossAxisAlignment.center,
        children: description != null
            ? [
                Text(
                  title ?? '',
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
                Text(description ?? '',
                    style: TextStyle(color: Colors.black26, fontSize: 12))
              ]
            : [
                Text(
                  title ?? '',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                )
              ],
      ),
      brightness: Brightness.dark,
      elevation: 2,
      centerTitle: true,
      actions: rightWidget != null ? [rightWidget] : [],
    );
  }
}
