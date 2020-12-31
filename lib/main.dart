
import 'package:flutter/material.dart';
import 'package:flutter_stard4th_20201207/screen/bottom_bar.dart';
import 'package:flutter_stard4th_20201207/screen/main_page.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Starflix',
        theme: ThemeData(
          brightness: Brightness.dark,
          primaryColor: Colors.black,
          accentColor: Colors.white,
        ),
        home: DefaultTabController(
          length: 4,
          child: Scaffold(
            body: TabBarView(
              physics: NeverScrollableScrollPhysics(),
              children: <Widget>[

                MainPage(),
                // Container(
                //   child: Center(
                //     child: Text("home"),
                //   ),
                // ),
                Container(
                  child: Center(
                    child: Text("search"),
                  ),
                ),

                Container(
                  child: Center(
                    child: Text("bookmark"),
                  ),
                ),
                Container(
                  child: Center(
                    child: Text("list"),
                  ),
                ),
              ],
            ),

            bottomNavigationBar: Bottom(),


          ),
        ));
  }
}





