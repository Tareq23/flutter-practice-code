

import 'package:demoapp/page/Home.dart';
import 'package:demoapp/page/first.dart';
import 'package:demoapp/page/second.dart';

import 'package:flutter/material.dart';


class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // initialRoute: '/',
      initialRoute: Home.route,
      routes: {
          Home.route : (context) => Home(),
          First.firstRoute : (context) => First(),
          Second.secondRoute : (context) => Second(),
      },
      home: Home(),
      // home: First(),
      // home: Second(),
    );
  }
}