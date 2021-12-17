import 'package:demoapp/page/first.dart';
import 'package:demoapp/page/second.dart';
import 'package:demoapp/widget/CustomAppBar.dart';
import 'package:flutter/material.dart';


class Home extends StatelessWidget
{
  static const route = '/home';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: CustomAppBar(),
        preferredSize: Size.fromHeight(70),
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,

        children: [
          SizedBox(height: 30,),
         Container(
           width: MediaQuery.of(context).size.width,
           child: Center(
             child: ElevatedButton(
                 onPressed: (){
                   Navigator.pushNamed(context, First.firstRoute);
                 },
                 child: Text("Go First")
             ),
           ),
         ),
         Container(
           width: MediaQuery.of(context).size.width,
           margin: EdgeInsets.only(top: 20),
           child: Center(
             child: ElevatedButton(
                 onPressed: (){
                   Navigator.pushNamed(context, Second.secondRoute);
                 },
                 child: Text("Go Second")
             ),
           ),
         ),
        ],
      ),
    );
  }
}