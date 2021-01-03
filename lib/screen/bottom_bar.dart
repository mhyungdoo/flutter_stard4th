import 'package:flutter/material.dart';

class Bottom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Container(
        height: 70,
        child: TabBar(
          labelColor: Colors.white,
          unselectedLabelColor: Colors.white60,
          indicatorColor: Colors.transparent,
          tabs: <Widget>[
            Tab(
              icon: Icon(
                Icons.sentiment_satisfied,
                size: 30,
              ),
              child: Text(
                'Profile',
                style: TextStyle(fontSize: 15),
              ),
            ),
            Tab(
              icon: Icon(
                Icons.developer_board,
                size: 30,
              ),
              child: Text(
                'Portfolio',
                style: TextStyle(fontSize: 15),
              ),
            ),
            Tab(
              icon: Icon(
                Icons.person_pin_circle,
                size: 30,
              ),
              child: Text(
                'Location',
                style: TextStyle(fontSize: 15),
              ),
            ),
            Tab(
              icon: Icon(
                Icons.contacts,
                size: 30,
              ),
              child: Text(
                'Contact',
                style: TextStyle(fontSize: 15),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
