import 'package:flutter/material.dart';


void main(){
  runApp(WorkWithImage());

}

class WorkWithImage extends StatelessWidget
{
  const WorkWithImage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(

        debugShowCheckedModeBanner: false,
        home:Scaffold(

          appBar: AppBar(
            title: Text("Developed by MD Tarequl Islam"),
            centerTitle: true,
          ),
          body: SingleChildScrollView(
            child: Column(
              children: <Widget> [
                Image.asset("assets/box.jpg"),
                Divider(height: 1.0,),
                Image.asset("assets/facebook.jpg"),
                Divider(height: 1.0,),
                Image.asset("assets/laptop.jpg"),
                Divider(height: 1.0,),
                Image.asset("assets/monitor.jpg"),
              ],
            ),
          )
        ),
    );
  }


}