import 'package:extended_image/extended_image.dart';
import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:hooyim/api/bean/user_info_entity.dart';

import 'state.dart';

Widget buildView(MineState state, Dispatch dispatch, ViewService viewService) {
  UserInfoResult data = state.userInfoEntity.result;
  return Container(
      color: Colors.grey[200],
      child: Column(
        children: [
          Container(
            child: Column(
              children: [
                Container(
                    height: 120,
                    child: Stack(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              padding: EdgeInsets.only(left: 15),
                              height: 120,
                              child: CircleAvatar(
                                  radius: 35,
                                  child: data == null
                                      ? ExtendedImage.asset('assets/gravatar.png',
                                          fit: BoxFit.fill,
                                          height: 70,
                                          width: 70,
                                          shape: BoxShape.circle,
                                          border: null)
                                      : ExtendedImage.network(data.gravatar,
                                          fit: BoxFit.fill,
                                          height: 70,
                                          width: 70,
                                          shape: BoxShape.circle,
                                          cache: true,
                                          border: null)),
                            )
                          ],
                        )
                      ],
                    )),
                Container()
              ],
            ),
          ),
          SingleChildScrollView(
            child: Column(
              children: [],
            ),
          )
        ],
      ));
}
