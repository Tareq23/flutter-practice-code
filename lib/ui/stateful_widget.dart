import 'package:flutter/material.dart';

class MyAppState extends StatelessWidget {
  const MyAppState({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StateChange(),
    );
  }
}


class StateChange extends StatefulWidget {
  const StateChange({Key? key}) : super(key: key);

  @override
  _StateChangeState createState() => _StateChangeState();
}

class _StateChangeState extends State<StateChange> {
  var textStyle = const TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.w500,
    fontSize: 24,
  );

  var currentImage = 1;
  var beachImageUrl = 'assets/beach-images/1.jpg';
  @override
  Widget build(BuildContext context) {
    var _width = MediaQuery.of(context).size.width;
    var _height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80),
        child: AppBar(
          title: const Text(
            'Stateful Widget',
            style: TextStyle(fontSize: 34,fontWeight: FontWeight.w700,color: Colors.white),
          ),
          backgroundColor: const Color(0xAF42F5F5),
          centerTitle: true,
        ),
      ),
      body: Stack(
        children: [
          Container(
              width: _width,
              height: _height,
              child: const Image(
                image:  NetworkImage(
                    'https://cdn.pixabay.com/photo/2021/12/22/16/50/landscape-6887936_960_720.jpg'
                ),
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.cover,
              )
          ),
          Positioned(
            top: 30,
            left: 30,
            right: 30,
            child: Container(
              width: _width - 40,
              alignment: Alignment.center,
              decoration:  BoxDecoration(
                gradient: const LinearGradient(
                  colors: [
                    Colors.deepPurpleAccent,
                    Colors.redAccent,
                    // Colors.lightGreenAccent,
                    Colors.deepOrangeAccent,
                    Colors.deepPurpleAccent,
                  ],
                  begin: Alignment.centerLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(30),
              ),
              padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 20),
              child: Column(
                children: [
                  Text("Beach Image",style: textStyle,),
                  Text("Press Button for see next image",style: textStyle,),
                ],
              ),
            ),
          ),
          Positioned(
            top: 200,
            left: 20,
            right: 20,
            child: Container(
              width: _width - 80,
              height: 300,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.white,
                  width: 20,
                ),
                borderRadius: BorderRadius.circular(20)
              ),
              child: Image(
                image: AssetImage(
                    beachImageUrl,
                ),
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            bottom: 100,
            left: _width/2-50,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.only(left: 20,right: 20,top: 15,bottom: 15),
                primary: Colors.white10
              ),
              onPressed: (){
                setState(() {
                    currentImage == 7 ? currentImage=1 : currentImage++;
                    beachImageUrl = 'assets/beach-images/'+currentImage.toString()+'.jpg';
                });
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Next ',style: textStyle,),
                  const Icon(Icons.arrow_forward,size: 30,color: Colors.white,)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
