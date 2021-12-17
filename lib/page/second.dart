import 'package:demoapp/page/first.dart';
import 'package:demoapp/widget/CustomAppBar.dart';
import 'package:demoapp/page/Home.dart';
import 'package:flutter/material.dart';

class Second extends StatelessWidget
{
  static const secondRoute = '/second';
  @override
  Widget build(BuildContext context) {
    const text = "Second Page";
    return Scaffold(
      appBar: PreferredSize(
        child: CustomAppBar(),
        preferredSize: Size.fromHeight(100),
      ),
      body: Column(
        children: [
          const SizedBox(height: 30,),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  height: 200,
                  width: 200,
                  margin: const EdgeInsets.only(right: 10),
                  color: Colors.lightGreen[300],
                  child: const Center(child: Text(text,style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20),)),
                ),
                Container(
                  height: 200,
                  width: 200,
                  margin: const EdgeInsets.only(right: 10),
                  color: Colors.lightGreen[250],
                  child: const Center(child: Text(text,style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20),)),
                ),Container(
                  height: 200,
                  width: 200,
                  margin: const EdgeInsets.only(right: 10),
                  color: Colors.lightGreen[700],
                  child: const Center(child: Text(text,style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20),)),
                ),Container(
                  height: 200,
                  width: 200,
                  margin: const EdgeInsets.only(right: 10),
                  color: Colors.lightGreen[100],
                  child: const Center(child: Text(text, style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20),)),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10,),
          Row(
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                child: Center(
                  child: ElevatedButton(
                    onPressed: () async{

                      Navigator.pop(context);
                      // var result = await Navigator.pushNamed(context, First.firstRoute);
                      // print(result);
                      // Scaffold.of(context).showSnackBar(SnackBar(content: Text('$result')));
                      Navigator.pushNamed(context, Home.route);
                    },
                    child: Text("Go Home"),
                  ),
                ),
              ),
            ],
          )

        ],
      ),
    );
  }
}