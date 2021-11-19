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
          // body: Center(
          //
          //   child: Text("Scaffold body attributes",style: TextStyle(color: Colors.black87,fontSize: 28)),
          //
          // ),
          drawer: Drawer(
            child: ListView(
              children: const <Widget> [
                DrawerHeader(
                  decoration: BoxDecoration(color: Colors.white10),
                  child: Text(
                    "welcome to javatpoint",
                    style: TextStyle(
                        color:Colors.blueGrey,fontSize: 30
                    ),
                  ),
                ),
                ListTile(
                  title: Text("List Tile 1",style: TextStyle(color:Colors.amberAccent),),
                ),
                ListTile(
                  title:  Text("List Tile 2"),
                  leading:  Icon(Icons.mail),
                ),
                Divider(
                  height: 0.2,
                ),
                ListTile(
                  title:  Text("Primary")
                ),
                ListTile(
                  title: Text("Social"),
                ),
                ListTile(
                  title:Text("Promotions")
                )
              ],
            ),
          ),
        )
    );
  }
}

