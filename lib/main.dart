import 'package:flutter/material.dart';
//
//
// void main()
// {
//   runApp(MaterialApp(
//       home: Center(
//         child:Text("Md Tarequl Islam")
//       )
//   ));
// }


void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
      home:Scaffold(
        appBar:AppBar(
          backgroundColor: Colors.lightBlueAccent,
          title : Text("First Flutter App"),
          centerTitle: true,
        ),
            body: Center(
              child:Image(
                image:NetworkImage('https://cdn.pixabay.com/photo/2021/11/12/18/13/greenfinch-6789772_960_720.jpg')
              )

      )
      )

  ));
}