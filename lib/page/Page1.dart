

import 'package:demoapp/Person.dart';
import 'package:flutter/material.dart';
class Page1 extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    final args = ModalRoute.of(context)!.settings.arguments as Person;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: const Text("Route Arguments"),
            centerTitle: true,
          ),
          body: Center(
            child: Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.height,
                  padding: EdgeInsets.symmetric(vertical: 10,horizontal: 5),
                  color: Colors.lightGreen.withOpacity(0.5),
                  child: Column(
                    children: [
                      Center(child: Text("First Page of my App")),
                      Center(child: Text(args.name),),
                      Center(child: Text(args.address),),
                    ],
                  ),
                ),
                SizedBox(height: 50,),
                TextButton(
                    onPressed: (){
                      Navigator.pushNamed(
                        context,
                        '/'
                      );
                    },
                    child: Icon(Icons.arrow_back),
                    )
              ],
            ),
          )
      ),
    );
  }
}