
import 'package:demoapp/page/FirstPage.dart';
import 'package:demoapp/page/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:demoapp/widget/AppWidgets.dart';

class Routes extends StatefulWidget {
  const Routes({Key? key}) : super(key: key);

  @override
  _RouteState createState() => _RouteState();
}

class _RouteState extends State<Routes> {
  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        // '/home':(context) => HomePage(),
        '/first': (c) => FirstPage(),
      },
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(80),
          // preferredSize: const Size.fromHeight(100.0),
          child: Center(
            child: CustomAppBar(),
          ),
        ),
        body: HomePage(),
      ),
    );
  }
}
