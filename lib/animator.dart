
import 'dart:async';

import 'package:demoapp/connectivity.dart';
import 'package:flutter/material.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:fluttertoast/fluttertoast.dart';

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

  StreamSubscription? _streamSubscription;
  Future checkConnection() async{
    final Connectivity _connectivity = Connectivity();
    ConnectivityResult _connectivityResult = await _connectivity.checkConnectivity();
    if(_connectivityResult == ConnectivityResult.mobile)
    {
      Fluttertoast.showToast(
        msg: "Thank's for connecting with your mobile data",
        // toastLength: Toast.LENGTH_SHORT,
        toastLength: Toast.LENGTH_LONG,
        // gravity: ToastGravity.CENTER,
        gravity: ToastGravity.TOP,
        backgroundColor: Colors.red,
        textColor: Colors.redAccent,
        fontSize: 16.0,
      );
    }
    else if(_connectivityResult == ConnectivityResult.wifi)
    {
      Fluttertoast.showToast(
        msg: "Thank's for connecting wifi",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.TOP,
        fontSize: 22,
        textColor: Colors.redAccent,
        backgroundColor: Colors.black38,
      );
    }
    else{
      Fluttertoast.showToast(
        msg: 'Check your internet connection',
        textColor: Colors.redAccent,
      );
    }
  }
  @override
  void initState()
  {
    _streamSubscription = Connectivity().onConnectivityChanged.listen((event) {
      checkConnection();
    });
    super.initState();
  }
  @override
  void dispose() {
    // TODO: implement dispose
    _streamSubscription!.cancel();
    super.dispose();
  }

  bool _value = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          checkConnection();
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
        title: Text("Animated Container & check Network Connectivity"),
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
              // backgroundImage: AssetImage("assets/laptop.jpg"),
              backgroundImage: NetworkImage("https://cdn.pixabay.com/photo/2016/03/07/09/34/kid-1241817__340.jpg"),
              backgroundColor: Colors.green,
              radius: 150,
            ),
          ),

        ),
      ),
    );
  }
}
