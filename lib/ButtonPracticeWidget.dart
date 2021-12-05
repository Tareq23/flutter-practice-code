
import 'package:flutter/material.dart';
// import 'package:flutter/cupertino.dart';

class ButtonPracticeWidget extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 15),
                      child: RaisedButton(
                        onPressed: (){},
                        child: Text("RaisedButton"),
                        color: Colors.greenAccent,
                        elevation: 10,
                      )
                  ),
                  FlatButton(onPressed: (){}, child: Text("FlatButton"),color: Colors.redAccent,),
                  SizedBox(
                    width: 10,
                  ),
                  OutlineButton(onPressed: (){}, child: Text("OutlineButton"),color: Colors.blueAccent,),
                ],
              ),
              Switch(value: true, onChanged: (isenable){}),
              Slider(
                  value: 10,
                  onChanged: (value){},
                  min: 1,
                  max: 100,
              ),
            ],
          ),
        ),
      )
    );
  }
}