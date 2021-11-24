import 'package:flutter/material.dart';


void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget
{
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context)
  {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:HomePage(),
    );
  }
}

class HomePage extends StatelessWidget
{
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      appBar: AppBar(
        title: const Text("Layout Design",style: TextStyle(color:Colors.black45)),
        centerTitle: true,
      ),
    );
  }
}