import 'package:flutter/material.dart';
import 'package:flutter_chess_board/flutter_chess_board.dart';
//import 'package:flutter_chess_board/flutter_chess_board.dart';


class ChessGame extends StatefulWidget {
  @override
  _ChessGameState createState() => _ChessGameState();
}

class _ChessGameState extends State<ChessGame> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chess Game'),
      ),
      body: new Center(
        child: ChessBoard(
          size: 300.0,
          onMove: (move) {
            print(move);
          },
          onCheckMate: (color) {
            print(color);
          },
          onDraw: () {
            print("DRAW!");
          },
        ),
      ),
    );
  }
}


