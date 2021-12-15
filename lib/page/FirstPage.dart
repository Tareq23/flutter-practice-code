

import 'package:demoapp/widget/AppWidgets.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(80),
          // preferredSize: const Size.fromHeight(100.0),
          child: Center(
            child: CustomAppBar(),
          ),
        ),
        body: Center(
          child: Column(
            children: [
              TextButton(onPressed: (){
                // Navigator.pop(context);
                Navigator.of(context).pop();
                // Navigator.pushNamed(context, '/home');
              }, child: Text("Go Back"))
            ],
          ),
        ),
      ),
    );
  }
}