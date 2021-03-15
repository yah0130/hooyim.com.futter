import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart' hide Page;
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluwx_no_pay/fluwx_no_pay.dart';
import 'package:hooyim/page.dart';
import 'package:hooyim/pages/article/page.dart';

void main() {
  runApp(MyApp());
  // _initFluwx();
}

// _initFluwx() async {
//   await registerWxApi(
//       appId: "wx8c87010b655edc01",
//       doOnAndroid: true,
//       doOnIOS: true,
//       universalLink: "https://www.hooyim.com/share/");
// }

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  final AbstractRoutes pageRoutes = PageRoutes(
    pages: <String, Page<Object, dynamic>>{
      'mainPage': MainPage(),
      'articlePage': ArticlePage()
    },
  );

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: Size(750, 1336),
        allowFontScaling: true,
        child: MaterialApp(
          theme: ThemeData(
            platform: TargetPlatform.android,
          ),
          home: pageRoutes.buildPage('mainPage', null),
          debugShowCheckedModeBanner: false,
          onGenerateRoute: (RouteSettings settings) {
            return MaterialPageRoute<Object>(builder: (BuildContext context) {
              return pageRoutes.buildPage(settings.name, settings.arguments);
            });
          },
        ));
  }
}
