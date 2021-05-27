import 'dart:ui';

import 'package:extended_image/extended_image.dart';
import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:hooyim/api/bean/statistic_entity.dart';
import 'package:hooyim/api/bean/user_info_entity.dart';

import 'state.dart';

Widget buildView(MineState state, Dispatch dispatch, ViewService viewService) {
  UserInfoResult data = state.userInfoEntity.result;
  StatisticResult statistic = state.statisticEntity.result;
  return Container(
      color: Colors.grey[200],
      child: Column(
        children: [
          Container(
            child: Column(
              children: [
                Container(
                    height: 120,
                    decoration: BoxDecoration(
                        image: data == null
                            ? DecorationImage(
                                fit: BoxFit.fitWidth,
                                image: AssetImage('assets/gravatar.png'))
                            : DecorationImage(
                                fit: BoxFit.fitWidth,
                                image: NetworkImage(data.gravatar))),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
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
                                        ? ExtendedImage.asset(
                                            'assets/gravatar.png',
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
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(bottom: 10),
                                      child: Text(
                                        data?.name,
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 18),
                                      ),
                                    ),
                                    Text(
                                      data?.slogan,
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    )),
                Container(
                    height: 60,
                    decoration: BoxDecoration(color: Colors.white),
                    child: Padding(
                      padding: EdgeInsets.only(top: 10, bottom: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                statistic?.articles.toString(),
                                style: TextStyle(color: Colors.black54),
                              ),
                              Text(
                                '文章',
                                style: TextStyle(color: Colors.black54),
                              )
                            ],
                          ),
                          VerticalDivider(
                            width: 1,
                            color: Color.fromRGBO(150, 150, 150, 0.5),
                          ),
                          Column(
                            children: [
                              Text(
                                statistic?.tags.toString(),
                                style: TextStyle(color: Colors.black54),
                              ),
                              Text(
                                '标签',
                                style: TextStyle(color: Colors.black54),
                              )
                            ],
                          ),
                          VerticalDivider(
                            width: 1,
                            color: Color.fromRGBO(150, 150, 150, 0.5),
                          ),
                          Column(
                            children: [
                              Text(
                                statistic?.comments.toString(),
                                style: TextStyle(color: Colors.black54),
                              ),
                              Text(
                                '评论',
                                style: TextStyle(color: Colors.black54),
                              )
                            ],
                          ),
                          VerticalDivider(
                            width: 1,
                            color: Color.fromRGBO(150, 150, 150, 0.5),
                          ),
                          Column(
                            children: [
                              Text(
                                statistic?.views.toString(),
                                style: TextStyle(color: Colors.black54),
                              ),
                              Text(
                                '今日阅读',
                                style: TextStyle(color: Colors.black54),
                              )
                            ],
                          )
                        ],
                      ),
                    ))
              ],
            ),
          ),
          SingleChildScrollView(
            child: Column(children: []),
          )
        ],
      ));
}
