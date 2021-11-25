import 'package:flutter/material.dart';


void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget
{
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: State_Ful_Widget(),
    );
  }
}

class State_Ful_Widget extends StatefulWidget{

  // ignore: non_constant_identifier_names
  @override
  HomeState createState() => HomeState();

}

class HomeState extends State<State_Ful_Widget>
{
  @override
  Widget build(BuildContext context) {
   return   Scaffold(
     body: Center(
       child: CircleAvatar(
         radius: 210,
         backgroundColor: Colors.amberAccent,
         child: CircleAvatar(
           radius: 200,
           backgroundImage: AssetImage("assets/box.jpg"),
           // minRadius: 100,
           // maxRadius: 800,
           child: Text("Hello Google", style: TextStyle(fontSize: 20),),
           foregroundColor: Colors.black87,
         ),
       )
     )
   );
  }

}