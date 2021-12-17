import 'package:demoapp/page/second.dart';
import 'package:demoapp/widget/CustomAppBar.dart';
import 'package:flutter/material.dart';

class First extends StatelessWidget
{
  static const firstRoute = '/first';
  @override
  Widget build(BuildContext context) {
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
                  child: const Center(child: Text("First Page",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20),)),
                ),
                Container(
                  height: 200,
                  width: 200,
                  margin: const EdgeInsets.only(right: 10),
                  color: Colors.lightGreen[250],
                  child: const Center(child: Text("First Page",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20),)),
                ),Container(
                  height: 200,
                  width: 200,
                  margin: const EdgeInsets.only(right: 10),
                  color: Colors.lightGreen[700],
                  child: const Center(child: Text("First Page",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20),)),
                ),Container(
                  height: 200,
                  width: 200,
                  margin: const EdgeInsets.only(right: 10),
                  color: Colors.lightGreen[100],
                  child: const Center(child: Text("First Page", style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20),)),
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
                      onPressed: (){
                        // Navigator.pop(context);
                        Navigator.of(context).pop('return data from first page');
                        Navigator.pushNamed(context, Second.secondRoute);
                      },
                      child: Text("Go Second"),
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