import 'package:demoapp/ExpandWidget.dart';
import 'package:demoapp/SwitchSliderTextFieldWidget.dart';
import 'package:demoapp/customCard.dart';
import 'package:flutter/material.dart';

void main() {
  // runApp(FlutterButton());
  // runApp(ExpandWidget());
  // runApp(SwitchSliderTextFieldWidget());
  runApp(CustomVCard());
}

class FlutterButton extends StatelessWidget {
  const FlutterButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(100),
          child: AppBar(
              title: const Text(
                "App Bar Preferred Size Widget",
                style: TextStyle(fontSize: 24),
              ),
              centerTitle: true,
              backgroundColor: Colors.red),
        ),
        body: Column(
          children: <Widget>[
            Container(
              height: 60,
              padding: EdgeInsets.only(left: 30,right: 30),
              margin: EdgeInsets.only(top: 40,bottom: 40),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                gradient: LinearGradient(
                    colors: <Color>[Colors.purple, Colors.blueAccent],
                    begin: Alignment.bottomLeft,
                    end: Alignment.topRight),
              ),

              child: Center(
                child: Text(
                  "TextButton instead of FlatButton",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
            Row(
              children: [
                SizedBox(
                  width: 45,
                ),
                FlatButton(
                    onPressed: () {},
                    child: Container(
                      height: 60,
                      // padding: const EdgeInsets.only(left: 20,right: 20,),
                      margin: const EdgeInsets.only(right: 30),
                      // decoration: const BoxDecoration(
                      //   gradient: LinearGradient(
                      //     colors: <Color>[Colors.purple,Colors.blueAccent],
                      //     begin: Alignment.bottomLeft,
                      //     end: Alignment.topRight
                      //   )
                      // ),
                      child: Center(
                          child: Text(
                        "Flat Button",
                        style: TextStyle(fontSize: 22),
                      )),
                    )),
                TextButton(
                    onPressed: () {},
                    child: Container(
                      height: 60,
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: const Center(
                          child: Text(
                        "Text Button",
                        style: TextStyle(fontSize: 22),
                      )),
                    ))
              ],
            ),
            Container(
              height: 60,
              padding: EdgeInsets.only(left: 30,right: 30),
              margin: EdgeInsets.only(top: 40,bottom: 40),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                gradient: LinearGradient(
                    colors: <Color>[Colors.purple, Colors.blueAccent],
                    begin: Alignment.bottomLeft,
                    end: Alignment.topRight),
              ),

              child: Center(
                child: Text(
                  "ElevatedButton instead of RaiseButton",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
            Row(
              children: [
                const SizedBox(
                  width: 25,
                ),
                RaisedButton(
                  onPressed: (){},
                  child:  Container(
                    padding: EdgeInsets.all(10),
                    child: const Center(
                      child:  Text("Raised Button", style: TextStyle(fontSize: 18),),
                    ),
                  ),
                ),
                const SizedBox(width: 15,),
                ElevatedButton(
                    onPressed: (){},
                    child: Container(
                      padding: const EdgeInsets.only(left: 5,right: 5,top: 10, bottom: 10),
                      child: const Center(
                        child: Text("Elevated Button",style: TextStyle(fontSize: 18),),
                      ),
                    )
                )
              ],
            ),
            Container(
              height: 60,
              padding: EdgeInsets.only(left: 30,right: 30),
              margin: EdgeInsets.only(top: 40,bottom: 40),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                gradient: LinearGradient(
                    colors: <Color>[Colors.purple, Colors.blueAccent],
                    begin: Alignment.bottomLeft,
                    end: Alignment.topRight),
              ),

              child: Center(
                child: Text(
                  "OutlinedButton instead of OutlineButton",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
            Row(
              children: [
                const SizedBox(
                  width: 25,
                ),
                OutlineButton(
                  onPressed: (){},
                  child:  Container(
                    padding: EdgeInsets.all(10),
                    child: const Center(
                      child:  Text("Outline Button", style: TextStyle(fontSize: 18),),
                    ),
                  ),
                ),
                const SizedBox(width: 15,),
                OutlinedButton(
                    onPressed: (){},
                    child: Container(
                      padding: const EdgeInsets.only(left: 5,right: 5,top: 10, bottom: 10),
                      child: const Center(
                        child: Text("Outlined Button",style: TextStyle(fontSize: 18),),
                      ),
                    )
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
