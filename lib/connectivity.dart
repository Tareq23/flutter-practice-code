
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
    // ConnectivityResult _connectivityResult = ConnectivityResult.none;
    // var connectivityResult = await (Connectivity.checkConnectivity());
    ConnectivityResult _connectivityResult = await _connectivity.checkConnectivity();

    if(_connectivityResult == ConnectivityResult.mobile)
    {
      Fluttertoast.showToast(
          msg: "Thank's for connecting with your mobile data",
          // toastLength: Toast.LENGTH_SHORT,
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.CENTER,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0,
      );
    }
    else if(_connectivityResult == ConnectivityResult.wifi)
    {
        Fluttertoast.showToast(
          msg: "Thank's for connecting wifi",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          fontSize: 22,
          textColor: Colors.white,
          backgroundColor: Colors.black38,
        );
    }
    // else if(_connectivityResult == ConnectivityResult.none){
    //
    // }
    else{
      Fluttertoast.showToast(

        msg: 'Check your internet connection',

      );
    }

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
