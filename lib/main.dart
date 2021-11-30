import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget
{
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home:Scaffold(
        appBar: AppBar(
          title: const Text("Layout Basic's"),
          centerTitle: true,
        ),
        body: Row(
          // mainAxisAlignment: MainAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.end,
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children:  [

            const BlueBox(),
            BiggerBox(),
            const BlueBox(),
          ],
        ),
      )
    );
  }
}





class BlueBox extends StatelessWidget{
  const BlueBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.blue,
        border: Border.all(),
      ),
    );
  }
}

class BiggerBox extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Container(
      height: 100,
      width: 50,
      decoration: BoxDecoration(
        color: Colors.red,
        border: Border.all(),
      ),
    );
  }
}