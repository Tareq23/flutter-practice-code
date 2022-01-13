import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

class SubSwipeLiquid extends StatelessWidget {
  const SubSwipeLiquid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SubSwipeLiquidState(),
    );
  }
}
class SubSwipeLiquidState extends StatefulWidget {
  const SubSwipeLiquidState({Key? key}) : super(key: key);

  @override
  _SubSwipeLiquidState createState() => _SubSwipeLiquidState();
}

class _SubSwipeLiquidState extends State<SubSwipeLiquidState> {
  final pages=[
    Container(
      color: (Colors.grey),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Image.network('https://cdn.pixabay.com/photo/2015/03/06/09/28/earth-661447_960_720.png',
              height: 200,
              width: 200,),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: const [
                Text('Earth', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,),)  ,
                Text('I am Earth',style:TextStyle(fontSize: 20, fontWeight: FontWeight.bold, ),),
              ],
              //Image.network('https://cdn.mos.cms.futurecdn.net/FaWKMJQnr2PFcYCmEyfiTm-970-80.jpg'),
            ),
          ),
        ],
      ),
    ),
    Container(
      color: (Colors.grey),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Image.network('https://static2.srcdn.com/wordpress/wp-content/uploads/2021/12/mars-red-space-planet-esa.jpg?q=50&fit=crop&w=960&h=500&dpr=1.5'),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: const [
                Text('Mars', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,),)  ,
                Text('I am Mars',style:TextStyle(fontSize: 20, fontWeight: FontWeight.bold, ),),
              ],
              //Image.network('https://cdn.mos.cms.futurecdn.net/FaWKMJQnr2PFcYCmEyfiTm-970-80.jpg') ,
            ),
          ),
        ],
      ),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LiquidSwipe(
        pages: pages,
        enableLoop: true,
        fullTransitionValue: 600,
        enableSideReveal: true,
      ),
    );
  }
}