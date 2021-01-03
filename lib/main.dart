import 'package:flutter/material.dart';
import 'package:flutter_stard4th_20201207/screen/bottom_bar.dart';
import 'package:flutter_stard4th_20201207/screen/location_page.dart';
import 'package:flutter_stard4th_20201207/screen/main_page.dart';
import 'package:flutter_stard4th_20201207/screen/portfolio_page.dart';

import 'screen/contact_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'StarD',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          brightness: Brightness.dark,
          primaryColor: Colors.black,
          accentColor: Colors.white,
        ),
        home: DefaultTabController(
          length: 4,     // 하단 메뉴의 개수
          child: Scaffold(
            body: TabBarView(
              physics: NeverScrollableScrollPhysics(),
              children: <Widget>[
                MainPage(),
                PortfolioPage(),
                ChessGame(),
                Contact(),   // 각 페이지 화면으로 연결할 클래스 이름

              ],
            ),
            bottomNavigationBar: Bottom(),
          ),
        ));
  }
}
