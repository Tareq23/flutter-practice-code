
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Conncetivities extends StatelessWidget {
  const Conncetivities({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ConnectivityState(),
    );
  }
}

class ConnectivityState extends StatefulWidget {
  const ConnectivityState({Key? key}) : super(key: key);

  @override
  _ConnectivityStateState createState() => _ConnectivityStateState();
}
class _ConnectivityStateState extends State<ConnectivityState> {
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            checkConnection();
          },
          child: Text("clicked here"),
        ),
      ),
    );
  }
}
