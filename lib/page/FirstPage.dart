

import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("First Page"),
        ),
        body: Center(
          child: Column(
            children: [
              TextButton(onPressed: (){
                Navigator.pop(context);
              }, child: Text("Go Back"))
            ],
          ),
        ),
      ),
    );
  }
}