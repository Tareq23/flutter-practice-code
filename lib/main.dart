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
   return const Scaffold(

   );
  }

}