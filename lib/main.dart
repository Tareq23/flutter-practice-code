import 'package:flutter/material.dart';


void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return MaterialApp(
        home: CustomStatefulWidget(),
    );
  }

}

class CustomStatefulWidget extends StatefulWidget
{
  @override
  _MyState createState () => _MyState();
}

class _MyState extends State<CustomStatefulWidget>
{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      // appBar: AppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children:  [
              const Text("Hello world"),
              Container(
                width: 200,
                height: 200,
                color: Colors.green,
                child: const Text("Container Widget", style: TextStyle(
                  fontSize: 30,
                ),),
              ),
              Container(
                width: 200,
                height: 200,
                color: Colors.red,
                child: const Text("Container Widget", style: TextStyle(
                  fontSize: 30,
                ),),
              ),
              Container(
                width: 200,
                height: 200,
                color: Colors.blue,
                child: const Text("Container Widget", style: TextStyle(
                  fontSize: 30,
                ),),
              ),
              Container(
                width: 200,
                height: 200,
                color: Colors.blue,
                child: const Text("Container Widget", style: TextStyle(
                  fontSize: 30,
                ),),
              ),
              Container(
                width: 200,
                height: 200,
                color: Colors.blue,
                child: const Text("Container Widget", style: TextStyle(
                  fontSize: 30,
                ),),
              ),
              Container(
                width: 200,
                height: 200,
                color: Colors.blue,
                child: const Text("Container Widget", style: TextStyle(
                  fontSize: 30,
                ),),
              ),
              Container(
                width: 200,
                height: 200,
                color: Colors.blue,
                child: const Text("Container Widget", style: TextStyle(
                  fontSize: 30,
                ),),
              ),
              Container(
                width: 200,
                height: 200,
                color: Colors.blue,
                child: const Text("Container Widget", style: TextStyle(
                  fontSize: 30,
                ),),
              ),
              Container(
                width: 200,
                height: 200,
                color: Colors.blue,
                child: const Text("Container Widget", style: TextStyle(
                  fontSize: 30,
                ),),
              ),
              Container(
                width: 200,
                height: 200,
                color: Colors.blue,
                child: const Text("Container Widget", style: TextStyle(
                  fontSize: 30,
                ),),
              ),
              Container(
                width: 200,
                height: 200,
                color: Colors.blue,
                child: const Text("Container Widget", style: TextStyle(
                  fontSize: 30,
                ),),
              ),
              Container(
                width: 200,
                height: 200,
                color: Colors.blue,
                child: const Text("Container Widget", style: TextStyle(
                  fontSize: 30,
                ),),
              ),
            ],
          ),
        )
      )
    );
  }
}