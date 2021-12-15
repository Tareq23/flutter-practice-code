
// import 'package:flutter/cupertino.dart';
import 'package:demoapp/page/FirstPage.dart';
import 'package:flutter/material.dart';
class HomePage extends StatefulWidget
{
  @override
  _HomePage createState(){
    return _HomePage();
  }
}

class _HomePage extends State<HomePage>
{
  @override
  Widget build(BuildContext context)
  {
    return Column(
      children: [
        Expanded(
          flex: 1,
          child: Container(
            height: 100,
            color: Colors.lightGreenAccent,
            child: Center(
              child: TextButton(
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context)=>FirstPage())
                  );
                },
                child: Container(
                  padding: EdgeInsets.all(0),
                    margin: EdgeInsets.all(0),
                    child: Text("Page 1"),
                    decoration: BoxDecoration(
                      color: Colors.red
                    ),
                ),
              ),
            ),
          )
        ),

        Expanded(
          flex: 1,
          child: Container(
            height: 100,
            color: Colors.lightGreenAccent.withOpacity(0.5),
          )
        ),
        Expanded(
          flex: 1,
          child: Container(
            height: 100,
            color: Colors.lightBlueAccent.withOpacity(0.5),
          )
        ),
      ],
    );
  }
}