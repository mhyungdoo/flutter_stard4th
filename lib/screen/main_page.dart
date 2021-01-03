import 'package:flutter/material.dart';
import 'package:flutter_stard4th_20201207/screen/location_page.dart';
import 'package:flutter_stard4th_20201207/screen/portfolio_page.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'STARD 4th',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          brightness: Brightness.dark,
          primaryColor: Colors.black,
          accentColor: Colors.white,
        ),
        home: Scaffold(
          drawer: Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                DrawerHeader(
                  child: Text(
                    '스타디4기',
                    style: TextStyle(fontSize: 30),
                  ),
                  decoration: BoxDecoration(color: Colors.blue),
                ),
                ListTile(
                  title: Text('Portfolio'),
                  onTap: () {
                    // 네이게이터 팝을 통해 드로워를 닫는다.
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PortfolioPage()),
                    );
                  },
                ),
                ListTile(
                  title: Text('Location'),
                  onTap: () {
                    // 네이게이터 팝을 통해 드로워를 닫는다.
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ChessGame()),
                    );
                  },
                ),
              ],
            ),
          ),
          appBar: AppBar(
            title: Text('STARD 4th'),
          ),
          body: Column(
            children: [
              Image.network(
                'https://cafeptthumb-phinf.pstatic.net/MjAyMDAxMjJfMjc1/MDAxNTc5NzAxNDg4ODc1.6A8bNu0xYwRbxtSkBFRrET8Igm105uUf8C-Fgebsj3cg.gywCBl3RL5nib7opYzK2_MtHgO1kyeI4foZmTcRx7gMg.PNG/stard_long2.PNG',
                height: 100,
                fit: BoxFit.fitWidth,
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.star,
                    size: 30,
                    color: Colors.green,
                  ),
                  Text(
                    'STARD CAFE Manager',
                    style: TextStyle(color: Colors.blue, fontSize: 25),
                  ),
                  Icon(
                    Icons.star,
                    size: 30,
                    color: Colors.green,
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                '기획자 & 개발자',
                style: TextStyle(color: Colors.blue, fontSize: 30),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Power Plant PM',
                style: TextStyle(color: Colors.green, fontSize: 30),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Team Project Fun.D Founder',
                style: TextStyle(color: Colors.redAccent, fontSize: 20),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: "Enter New Profile",
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(35.0),
                      borderSide: BorderSide(),
                    ),
                    //fillColor: Colors.green
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
