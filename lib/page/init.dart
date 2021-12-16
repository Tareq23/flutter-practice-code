

import 'package:demoapp/Person.dart';
import 'package:flutter/material.dart';
class Init extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
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
                  child: Text("Init Page of my App"),
                ),
                SizedBox(height: 50,),
                TextButton(
                  onPressed: (){
                    Navigator.pushNamed(
                        context,
                        '/firstPage',
                         arguments: Person("Md Tarequl Islam", "Bhola\nDaulatkhan"),
                    );
                  },
                  child: const Text("Page1"),
                )
              ],
            ),
          )
      ),
    );
  }
}