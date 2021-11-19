import 'package:flutter/material.dart';





void main()
{
  runApp(HomeApp());
}

class HomeApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home:Scaffold(
          backgroundColor: Colors.lightBlueAccent,
          appBar: AppBar(
            backgroundColor: Colors.cyan,
            title: Text("Scaffold Widget"),
            centerTitle: true,
          ),
          body: Center(

            child: Text("Scaffold body attributes",style: TextStyle(color: Colors.black87,fontSize: 28)),

          ),
        )
    );
  }
}

