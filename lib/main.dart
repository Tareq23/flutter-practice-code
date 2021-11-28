

import 'dart:ui';

import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context){
    const appTitle = "Form Demo";
    return  MaterialApp(
        debugShowCheckedModeBanner: false,
        title: appTitle,
        home: HomeState(),
    );
  }
}

class HomeState extends StatefulWidget
{
  @override
  CustomForm createState (){
    return CustomForm();
  }
}

class CustomForm  extends State<HomeState>{
  @override
  Widget build(BuildContext context) {
     return  Scaffold(
        appBar: AppBar(
          title: const Text("Form Create Style", style: TextStyle(fontWeight: FontWeight.w900),),
        ),
       body: Column(
         children:   <Widget>[
           const Padding(
               padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
             child: TextField(
               decoration: InputDecoration(
                 enabledBorder: OutlineInputBorder(),
                 hintText: 'Enter a search term'
               ),
             ),
           ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 80, vertical: 16),
            child:  TextField(
              decoration:  InputDecoration(
                border: UnderlineInputBorder(),
                hintText: 'Enter your username',
              ),
            ),
          ),
           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 20),
             child:  TextFormField(
               decoration:  InputDecoration(
                 labelText: 'Enter something',
                 enabledBorder: OutlineInputBorder(
                   borderSide: const BorderSide(width: 3, color: Colors.greenAccent),
                   borderRadius:  BorderRadius.circular(20),
                 ),
                 focusedBorder:  OutlineInputBorder(
                   // borderSide: BorderSide(width: 20, color: Colors.redAccent),
                   borderSide: const BorderSide(width: 5, color: Colors.cyanAccent),
                   // borderRadius:  BorderRadius.zero,
                   borderRadius: BorderRadius.circular(15),
                 )

               ),
             ),
           ),
           Padding(
             padding: const EdgeInsets.fromLTRB(20, 50, 20, 10),
             child: TextFormField(
               decoration:  InputDecoration(
                 hintText: 'Write something',
                 labelText: 'Always write something',
                 border: OutlineInputBorder(
                   borderSide: const BorderSide(width: 3, color: Colors.pink),
                   borderRadius: BorderRadius.circular(16),
                 )
               ),
             ),
           )
         ],
       )
     );
  }
}

