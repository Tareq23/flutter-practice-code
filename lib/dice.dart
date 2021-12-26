import 'dart:math';

import 'package:flutter/material.dart';

class DiceApp extends StatefulWidget {
  const DiceApp({Key? key}) : super(key: key);

  @override
  _DiceAppState createState() => _DiceAppState();
}

class _DiceAppState extends State<DiceApp> {
  int leftDiceNum = 1;
  int rightDiceNum = 6;
  int midDiceNum = 3;
  void changeDiceNumberLeft() {
    setState(() {
      leftDiceNum = Random().nextInt(6) + 1;
    });
  }
  void changeDiceNumberMid() {
    setState(() {
      midDiceNum = Random().nextInt(6) + 1;
    });
  }
  void changeDiceNumberRight() {
    setState(() {
      rightDiceNum = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Dice App',
            style: TextStyle(color: Colors.deepOrange),
          ),
          elevation: 0.0,
          backgroundColor: Colors.transparent,
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: FlatButton(
                      onPressed: () {},
                      child: Image(
                        image: AssetImage('assets/dice/dice$leftDiceNum.png'),
                      ),
                    ),
                  ),
                  Expanded(
                    child: FlatButton(
                      onPressed: () {},
                      child: Image(
                        image: AssetImage('assets/dice/dice$midDiceNum.png'),
                      ),
                    ),
                  ),
                  Expanded(
                    child: FlatButton(
                      onPressed: () {},
                      child: Image(
                        image: AssetImage('assets/dice/dice$rightDiceNum.png'),
                      ),
                    ),
                  ),
                ],
              ),
              Row(children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      changeDiceNumberLeft();
                    },
                    child: Text("change left"),
                  ),
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      changeDiceNumberMid();
                    },
                    child: Text("change mid"),
                  ),
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      changeDiceNumberRight();
                    },
                    child: Text("change right"),
                  ),
                ),
              ])
            ],
          ),
        ),
      ),
    );
  }
}
