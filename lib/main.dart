
import 'package:flutter/material.dart';

void main(){
  runApp(const MainApp());
}

class MainApp extends StatelessWidget
{
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return const MaterialApp(
      home:  MyForm(),
    );
  }
}

class MyForm extends StatefulWidget
{
  const MyForm({Key? key}) : super(key: key);

  @override
  MyFormState createState(){
    return MyFormState();
  }
}

class MyFormState extends State<MyForm>{

  final myController = TextEditingController();


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    myController.addListener(printLatestValue);
  }

  void printLatestValue(){
    // ignore: avoid_print
    print("Latest value using Text Editing Controller ${myController.text}");
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Handle changes to a text field"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextFormField(
              onChanged: (text){
                  // ignore: avoid_print
                  print("Latest value using onChanged : $text");
              },
            ),
            TextFormField(
              controller: myController,
            )
          ],
        ),
      ),
    );
  }
}