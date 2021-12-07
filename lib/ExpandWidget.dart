

import 'package:flutter/material.dart';

class ExpandWidget extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyExpand(),
    );
  }
}

class MyExpand extends StatefulWidget{
  @override
  _MyExpand  createState(){
    return _MyExpand();
  }
}

class _MyExpand extends State<MyExpand>
{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100),
        child: AppBar(
          title: const Text("Expanded Widget Practice"),
          centerTitle: true,
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: 30,),
          Row(
            children: [
              Expanded(
                flex: 1,
                  child: Container(
                      height: 150,
                      margin: EdgeInsets.only(left: 10),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: <Color>[Colors.deepPurpleAccent,Colors.greenAccent],
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                        )
                      ),
                      child:  Center(
                          child: Text("Box 1",style: TextStyle(fontSize: 22,fontWeight: FontWeight.w600,color: Colors.black87),),
                      ),
              ),
              ),
              SizedBox(width: 20,),
              Expanded(
                flex: 2,
                  child: Container(
                      height: 150,
                      margin: EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: <Color>[Colors.deepPurpleAccent,Colors.greenAccent],
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                        )
                      ),
                      child:  Center(
                          child: Text("Box 2",style: TextStyle(fontSize: 22,fontWeight: FontWeight.w600,color: Colors.black87),),
                      ),
              ),
              ),
            ],
          ),
          SizedBox(height: 30,),
          Row(
            children: [
              Expanded(
                flex: 5,
                  child: Container(
                      height: 150,
                      margin: EdgeInsets.only(left: 10),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: <Color>[Colors.deepPurpleAccent,Colors.greenAccent],
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                        )
                      ),
                      child:  Center(
                          child: Text("Box 3",style: TextStyle(fontSize: 22,fontWeight: FontWeight.w600,color: Colors.black87),),
                      ),
              ),
              ),
              SizedBox(width: 20,),
              Expanded(
                flex: 2,
                  child: Container(
                      height: 150,
                      margin: EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: <Color>[Colors.deepPurpleAccent,Colors.greenAccent],
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                        )
                      ),
                      child:  Center(
                          child: Text("Box 4",style: TextStyle(fontSize: 22,fontWeight: FontWeight.w600,color: Colors.black87),),
                      ),
              ),
              ),
            ],
          ),
          SizedBox(height: 30,),
          Expanded(
            flex: 2,
            child: Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.only(left: 10,right: 10),
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: <Color>[Colors.deepPurpleAccent,Colors.greenAccent],
                    begin: Alignment.bottomLeft,
                    end: Alignment.topRight,
                  )
              ),
              child:  Center(
                child: Text("Box 5",style: TextStyle(fontSize: 22,fontWeight: FontWeight.w600,color: Colors.black87),),
              ),
            ),
          ),
          SizedBox(height: 5,),
          Expanded(
            flex: 3,
            child: Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.only(left: 10,right: 10),
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: <Color>[Colors.deepPurpleAccent,Colors.greenAccent],
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                  )
              ),
              child:  Center(
                child: Text("Box 6",style: TextStyle(fontSize: 22,fontWeight: FontWeight.w600,color: Colors.black87),),
              ),
            ),
          ),
          Column(
            children: [

            ],
          )
        ],
      ),
    );
  }
}