import 'dart:math';

import 'package:flutter/material.dart';

class Dice extends StatelessWidget {
  const Dice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DiceApp(),
    );
  }
}


class DiceApp extends StatefulWidget {
  const DiceApp({Key? key}) : super(key: key);
  @override
  _DiceAppState createState() => _DiceAppState();
}

class _DiceAppState extends State<DiceApp> {
  int topDiceNum = 1;
  int bottomDiceNum = 6;
  int midDiceNum = 3;
  void changeDiceNumberTop() {
    setState(() {
      topDiceNum = Random().nextInt(6) + 1;
    });
  }
  void changeDiceNumberMid() {
    setState(() {
      midDiceNum = Random().nextInt(6) + 1;
    });
  }
  void changeDiceNumberBottom() {
    setState(() {
      bottomDiceNum = Random().nextInt(6) + 1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Dice App',
          style: TextStyle(color: Colors.deepOrange,fontSize: 30),
        ),
        elevation: 10.0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Image(
            image: const NetworkImage("https://cdn.pixabay.com/photo/2020/03/02/18/23/street-4896486__340.jpg"),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            fit: BoxFit.cover,
          ),
          Positioned(
            top: 10,
            left: 10,
            right: 10,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image(
                          image: AssetImage('assets/dice/dice$topDiceNum.png'),
                          width: 200,
                          height: 200,
                          fit: BoxFit.cover,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          onPrimary: Colors.white,
                          primary: Colors.redAccent,
                          padding: const EdgeInsets.all(15),
                        ),
                        onPressed: (){
                          changeDiceNumberTop();
                        },
                        child: const Text('Top Dice',style: TextStyle(fontSize: 30),),
                      )
                    ],
                  ),
                  const Divider(
                    height: 100,
                    thickness: 20,
                    color: Colors.white,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image(
                          image: AssetImage('assets/dice/dice$midDiceNum.png'),
                          width: 200,
                          height: 200,
                          fit: BoxFit.cover,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          onPrimary: Colors.white,
                          primary: Colors.redAccent,
                          padding: const EdgeInsets.all(15),
                        ),
                        onPressed: (){
                          changeDiceNumberMid();
                        },
                        child: const Text('Mid Dice',style: TextStyle(fontSize: 30),),
                      )
                    ],
                  ),
                  const Divider(
                    height: 100,
                    thickness: 20,
                    color: Colors.white,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image(
                          image: AssetImage('assets/dice/dice$bottomDiceNum.png'),
                          width: 200,
                          height: 200,
                          fit: BoxFit.cover,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          onPrimary: Colors.white,
                          primary: Colors.redAccent,
                          padding: const EdgeInsets.all(15),
                        ),
                        onPressed: (){
                          changeDiceNumberBottom();
                        },
                        child: const Text('Bottom Dice',style: TextStyle(fontSize: 30),),
                      )
                    ],
                  ),
                  const Divider(
                    height: 100,
                    thickness: 20,
                    color: Colors.white,
                  ),
                ]
              ),
            ),
          )
        ],
      ),
    );
  }
}
