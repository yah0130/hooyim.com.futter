import 'package:extended_image/extended_image.dart';
import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:hooyim/common/baseTitleBar.dart';
import 'package:hooyim/common/baseViewBar.dart';
import 'package:hooyim/pages/article/action.dart';
import 'package:intl/intl.dart';
import 'package:skeleton_text/skeleton_text.dart';

import 'state.dart';

Widget buildView(
    ArticleState state, Dispatch dispatch, ViewService viewService) {
  int id = state.id;
  int likes = state.meta.likes;
  int views = state.meta.views;
  int comments = state.meta.comments;
  String updateAt =
      DateFormat("yyyy/MM/dd").format(DateTime.parse(state.updateAt));
  return Scaffold(
      appBar: BaseViewBar(
          childView: BaseTitleBar(
            title: state.title,
            description: state.description,
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [Colors.white, Colors.white])),
          ),
          preferredSize: Size.fromHeight(50.0)),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Container(
              color: Colors.grey[300],
              height: double.maxFinite,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    color: Colors.white,
                    padding: EdgeInsets.only(
                      bottom: ScreenUtil().setWidth(100),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Hero(
                          tag: 'articleImage$id',
                          child: ExtendedImage.network(
                            state.thumb,
                            width: ScreenUtil().setWidth(750),
                            height: ScreenUtil().setWidth(270),
                            fit: BoxFit.cover,
                            cache: true,
                            border: null,
                            //cancelToken: cancellationToken,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: Text(
                            "阅读 $views · 喜欢 $likes · 最后编辑于 $updateAt",
                            style: TextStyle(color: Colors.grey, fontSize: 14),
                          ),
                        ),
                        state.loading
                            ? Container(
                                height: ScreenUtil().setHeight(700),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.max,
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 15.0, bottom: 10.0),
                                      child: SkeletonAnimation(
                                        child: Container(
                                          height: 10,
                                          width:
                                              MediaQuery.of(viewService.context)
                                                      .size
                                                      .width *
                                                  0.8,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                              color: Colors.grey[300]),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 15.0, bottom: 10.0),
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(right: 5.0),
                                        child: SkeletonAnimation(
                                          child: Container(
                                            width: 160,
                                            height: 10,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                                color: Colors.grey[300]),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 15.0, bottom: 5.0),
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(right: 5.0),
                                        child: SkeletonAnimation(
                                          child: Container(
                                            width: 80,
                                            height: 10,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                                color: Colors.grey[300]),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            : Container(
                                child: Markdown(
                                  controller: state.controller,
                                  shrinkWrap: true,
                                  data: state.detail.result.content,
                                ),
                              )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: -10,
            left: 0,
            right: 0,
            child: SizedBox(
                width: ScreenUtil().setWidth(750),
                height: ScreenUtil().setWidth(100),
                child: Opacity(
                  opacity: 0.85,
                  child: Center(
                    child: Container(
                      color: Colors.white,
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(
                                  IconData(0xe660, fontFamily: 'iconfont'),
                                  color: Colors.grey,
                                  size: 20,
                                ),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                                  child: Text(
                                    '评论($comments)',
                                    style: TextStyle(color: Colors.black54),
                                  ),
                                )
                              ],
                            ),
                            GestureDetector(
                              onTap: () {
                                dispatch(
                                    ArticleActionCreator.onLikePage(state.id));
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(
                                    state.isLiked
                                        ? IconData(0xe65b, fontFamily: 'iconfont')
                                        : IconData(0xe607,
                                            fontFamily: 'iconfont'),
                                    color: state.isLiked
                                        ? Colors.redAccent
                                        : Colors.grey,
                                    size: 20,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                                    child: Text(
                                      '喜欢($likes)',
                                      style: TextStyle(
                                          color: state.isLiked
                                              ? Colors.redAccent
                                              : Colors.black54),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(
                                  IconData(0xe600, fontFamily: 'iconfont'),
                                  color: Colors.grey,
                                  size: 20,
                                ),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                                  child: Text(
                                    '分享',
                                    style: TextStyle(color: Colors.black54),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                )),
          ),
        ],
      ));
}
