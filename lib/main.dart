import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(DiceMain());

class DiceMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black12,
        appBar: AppBar(
          title: Text("Dice"),
          backgroundColor: Colors.black12,
        ),
        body: DicePage(),
      ),
    );
  }
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int firstDiceImg = 1;
  int secondDiceImg = 1;

  void changeDiceNumber() {
    setState(() {
      firstDiceImg = Random().nextInt(6) + 1;
      secondDiceImg = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
                onPressed: () {
                  print("First Button was pressed");
                  changeDiceNumber();
                },
                child: Image.asset("images/dice$firstDiceImg.png")),
          ),
          Expanded(
            child: FlatButton(
                onPressed: () {
                  print("Second Button was pressed");
                  changeDiceNumber();
                },
                child: Image.asset("images/dice$secondDiceImg.png")),
          ),
        ],
      ),
    );
  }
}
