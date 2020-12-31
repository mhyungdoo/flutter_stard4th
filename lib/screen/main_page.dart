import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'STARD 4th',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
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
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.wifi_outlined,
                    size: 30,
                    color: Colors.green,
                  ),
                  Text(
                    'My Portfolio',
                    style: TextStyle(color: Colors.blue, fontSize: 30),
                  ),
                  Icon(
                    Icons.star,
                    size: 30,
                    color: Colors.blue,
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Text(
                '1.StarD',
                style: TextStyle(color: Colors.blue, fontSize: 30),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                '2.Sipro',
                style: TextStyle(color: Colors.green, fontSize: 30),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                '3.ITUP',
                style: TextStyle(color: Colors.redAccent, fontSize: 30),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                '4.Fun.D',
                style: TextStyle(color: Colors.black, fontSize: 30),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: "Enter New Portfolio",
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
