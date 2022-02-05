
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
              Image(
                image: NetworkImage(
                  'https://cdn.pixabay.com/photo/2019/10/11/16/56/cat-4542301_960_720.jpg',
                ),
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Name',
                    hintText: 'Enter your name',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Address',
                    hintText: 'Enter your Address',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Email',
                    hintText: 'Enter your Email',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    hintText: 'Enter your Password',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
            ],
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: (){},
            child: Icon(Icons.home),
          ),
        ),
      )
    );
  }
}