import 'package:extended_image/extended_image.dart';
import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyrefresh/easy_refresh.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:hooyim/api/bean/article_entity.dart';
import 'package:hooyim/pages/home/action.dart';
import 'package:intl/intl.dart';

import 'state.dart';

Widget buildView(HomeState state, Dispatch dispatch, ViewService viewService) {
  return Container(
      color: Colors.grey[200],
      child: EasyRefresh.custom(
        firstRefresh: true,
        firstRefreshWidget: Container(
          width: double.infinity,
          height: double.infinity,
          child: Center(
              child: SizedBox(
            height: 200.0,
            width: 300.0,
            child: Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 50.0,
                    height: 50.0,
                    child: SpinKitFadingCube(
                      color: Theme.of(viewService.context).primaryColor,
                      size: 25.0,
                    ),
                  ),
                  Container(
                    child: Text('正在加载...'),
                  )
                ],
              ),
            ),
          )),
        ),
        controller: state.controller,
        enableControlFinishLoad: true,
        header: BallPulseHeader(color: Color.fromRGBO(54, 209, 193, 1)),
        footer: BallPulseFooter(color: Color.fromRGBO(54, 209, 193, 1)),
        onRefresh: () async {
          dispatch(HomeActionCreator.onArticleRefresh());
        },
        onLoad: () async {
          dispatch(HomeActionCreator.onLoadMore({
            'page': state.articleEntity.result != null
                ? ++state.articleEntity.result.pagination.currentPage
                : 1
          }));
        },
        emptyWidget: state.articleEntity.result != null &&
                state.articleEntity.result.data.length > 0
            ? null
            : Container(
                child: Center(
                  child: Text('暂无数据'),
                ),
              ),
        slivers: <Widget>[
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                ArticleResultData data = state.articleEntity.result.data[index];
                int id = data.id;
                return Padding(
                  padding: EdgeInsets.all(10),
                  child: Card(
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.zero)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              child: Hero(
                                  tag: 'articleImage$id',
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.pushNamed(
                                          context, 'articlePage',
                                          arguments: {
                                            'id': data.id,
                                            'thumb': data.thumb,
                                            'title': data.title,
                                            'description': data.description,
                                            'updateAt': data.updateAt,
                                            'meta': data.meta
                                          });
                                    },
                                    child: ExtendedImage.network(
                                      data.thumb,
                                      width: ScreenUtil().setWidth(700),
                                      height: ScreenUtil().setWidth(250),
                                      fit: BoxFit.cover,
                                      cache: true,
                                      border: null,
                                      //cancelToken: cancellationToken,
                                    ),
                                  ))),
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.fromLTRB(8, 12, 8, 8),
                                  child: Text(
                                    data.title,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(8, 0, 8, 10),
                                  child: Text(
                                    data.description,
                                    style: TextStyle(color: Colors.grey[600]),
                                  ),
                                ),
                                Divider(
                                  height: 10,
                                  color: Colors.grey,
                                ),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(8, 10, 15, 15),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Icon(
                                            Icons.access_time_sharp,
                                            color: Colors.grey,
                                            size: 20,
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsets.fromLTRB(5, 0, 0, 0),
                                            child: Text(
                                              DateFormat("yyyy/MM/dd").format(
                                                  DateTime.parse(
                                                      data.updateAt)),
                                              style:
                                                  TextStyle(color: Colors.grey),
                                            ),
                                          )
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Icon(
                                            IconData(0xe6e4,
                                                fontFamily: 'iconfont'),
                                            color: Colors.grey,
                                            size: 20,
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsets.fromLTRB(5, 0, 0, 0),
                                            child: Text(
                                              data.meta.views.toString(),
                                              style:
                                                  TextStyle(color: Colors.grey),
                                            ),
                                          )
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Icon(
                                            IconData(0xe660,
                                                fontFamily: 'iconfont'),
                                            color: Colors.grey,
                                            size: 20,
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsets.fromLTRB(5, 0, 0, 0),
                                            child: Text(
                                              data.meta.comments.toString(),
                                              style:
                                                  TextStyle(color: Colors.grey),
                                            ),
                                          )
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Icon(
                                            IconData(0xe607,
                                                fontFamily: 'iconfont'),
                                            color: Colors.grey,
                                            size: 20,
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsets.fromLTRB(5, 0, 0, 0),
                                            child: Text(
                                              data.meta.likes.toString(),
                                              style:
                                                  TextStyle(color: Colors.grey),
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      )),
                );
              },
              childCount: state.articleEntity.result != null
                  ? state.articleEntity.result.data.length
                  : 0,
            ),
          ),
        ],
      ));
}
