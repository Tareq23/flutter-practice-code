
import 'package:flutter/material.dart';

class Animator extends StatelessWidget {
  const Animator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimatorState(),
    );
  }
}


class AnimatorState extends StatefulWidget {
  const AnimatorState({Key? key}) : super(key: key);

  @override
  _AnimatorStateState createState() => _AnimatorStateState();
}

class _AnimatorStateState extends State<AnimatorState> {

  bool _value = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            _value = !_value;
          });
        },
        child: Icon(
          Icons.play_arrow,
          size: 55,
          color: Colors.black45,
        ),
      ),
      appBar: AppBar(
        title: Text("Animated Container"),
      ),
      body: Center(
        child: AnimatedContainer(
          duration: Duration(
            milliseconds: 2000,
          ),
          width: _value == false ? 50 : 450,
          height: _value == false ? 50: 450,
          // color: Colors.black,
          child:  CircleAvatar(
            radius: 200,
            backgroundColor: Colors.greenAccent,

            child: CircleAvatar(
              backgroundImage: AssetImage("assets/laptop.jpg"),
              // foregroundColor: Colors.redAccent,
              backgroundColor: Colors.green,
              radius: 150,
            ),
          ),

        ),
      ),
    );
  }
}
