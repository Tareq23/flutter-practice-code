

import 'package:demoapp/page/Page1.dart';
import 'package:demoapp/page/init.dart';
import 'package:flutter/material.dart';


class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
          '/firstPage' : (context) => Page1()
      },
      home: Init()
    );
  }
}