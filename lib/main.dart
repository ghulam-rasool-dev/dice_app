import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red.shade400,
        appBar: AppBar(
          title: Center(
            child: Text(
              'Dicee',
            ),
          ),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber=1,rightDiceNumber=2;
  void changestate(){
    setState(() {
      rightDiceNumber= Random().nextInt(6)+1;
      leftDiceNumber=Random().nextInt(6)+1;
    });
  }
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: FlatButton(
                padding: EdgeInsets.all(0),
                onPressed: () {
                  changestate();
                  print("Left Button pressed");
                },
                child: Image.asset("images/dice$leftDiceNumber.png"),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: FlatButton(
                padding: EdgeInsets.all(0),
                onPressed: (){
                  changestate();
                  print("Right Button pressed");
                },
                child: Image.asset("images/dice$rightDiceNumber.png"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
