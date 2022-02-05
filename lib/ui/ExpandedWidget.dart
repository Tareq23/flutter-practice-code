import 'package:flutter/material.dart';

class ExpandedWidget extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: const Text("Expanded Widget ",style: TextStyle(fontSize: 28,fontWeight: FontWeight.w500),),
            centerTitle: true,
          ),
          body: MyWidget(),
        ),
    );
  }
}
class MyWidget extends StatefulWidget
{
  @override
  _MyExpand createState (){
    return _MyExpand();
  }
}
class _MyExpand extends State<MyWidget>
{
  @override
  Widget build(BuildContext context)
  {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 10, right: 10,top: 10),
          child: Row(
            children: [
              Expanded(
                flex:1,
                child: Container(
                  height: 60,
                  margin: EdgeInsets.only(right: 10),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: <Color>[Colors.lightBlueAccent.withOpacity(0.4),Colors.lightGreenAccent.withOpacity(0.5)]
                    )
                  ),
                  child: Center(child: const Text("Expanded 1",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 16),)),
                ),
              ),
              Expanded(
                flex:3,
                child: Container(
                  height: 60,
                  // margin: EdgeInsets.only(right: 10),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: <Color>[Colors.lightBlueAccent.withOpacity(0.4),Colors.lightGreenAccent.withOpacity(0.5)]
                    )
                  ),
                  child: Center(child: const Text("Expanded 2",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 26),)),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 10, right: 10,top: 10),
          child: Row(
            children: [
              Expanded(
                flex:5,
                child: Container(
                  height: 60,
                  margin: EdgeInsets.only(right: 10),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: <Color>[Colors.lightBlueAccent.withOpacity(0.4),Colors.lightGreenAccent.withOpacity(0.5)]
                    )
                  ),
                  child: Center(child: const Text("Expanded 3",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 22),)),
                ),
              ),
              Expanded(
                flex:2,
                child: Container(
                  height: 60,
                  // margin: EdgeInsets.only(right: 10),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: <Color>[Colors.lightBlueAccent.withOpacity(0.4),Colors.lightGreenAccent.withOpacity(0.5)]
                    )
                  ),
                  child: Center(child: const Text("Expanded 4",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 16),)),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 30,),
        Expanded(
          flex:2,
          child: Container(
            width: MediaQuery.of(context).size.width - 20,
            // margin: EdgeInsets.only(right: 10),
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: <Color>[Colors.lightBlueAccent.withOpacity(0.4),Colors.lightGreenAccent.withOpacity(0.5)]
                )
            ),
            child: Center(child: const Text("Expanded 5",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 26),)),
          ),
        ),
        SizedBox(height: 10,),
        Expanded(
          flex:5,
          child: Container(
            width: MediaQuery.of(context).size.width - 20,
            // margin: EdgeInsets.only(right: 10),
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: <Color>[Colors.lightBlueAccent.withOpacity(0.4),Colors.lightGreenAccent.withOpacity(0.5)]
                )
            ),
            child: Center(child: const Text("Expanded 6",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 26),)),
          ),
        ),
        SizedBox(height: 10,),
        Expanded(
          flex:3,
          child: Container(
            width: MediaQuery.of(context).size.width - 20,
            // margin: EdgeInsets.only(right: 10),
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: <Color>[Colors.lightBlueAccent.withOpacity(0.4),Colors.lightGreenAccent.withOpacity(0.5)]
                )
            ),
            child: Center(child: const Text("Expanded 7",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 26),)),
          ),
        ),
      ],
    );
  }
}