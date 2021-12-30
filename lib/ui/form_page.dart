import 'package:flutter/material.dart';

class FormPage extends StatelessWidget {
  const FormPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FormState(),
    );
  }
}

class FormState extends StatefulWidget {
  const FormState({Key? key}) : super(key: key);

  @override
  _FormStateState createState() => _FormStateState();
}

class _FormStateState extends State<FormState> {
  @override
  Widget build(BuildContext context) {
    var _width = MediaQuery.of(context).size.width;
    var _height = MediaQuery.of(context).size.height;
    var inputTextStyle = TextStyle(fontWeight: FontWeight.w400,fontSize: 26,color: Colors.white);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Form Page'.toUpperCase(),
          style: const TextStyle(
              color: Colors.white, fontSize: 34, fontWeight: FontWeight.w700),
        ),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          SizedBox(
            width: _width,
            height: _height,
            child: const Image(
              image: NetworkImage(
                  'https://cdn.pixabay.com/photo/2015/09/21/14/48/banner-949946__340.jpg'),
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            // padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 10),
            padding: const EdgeInsets.only(left: 20, right: 20, top: 70),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 20),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.white70,
                      width: 3,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Stack(
                    overflow: Overflow.visible,
                    children:  [
                      TextField(
                        decoration:  InputDecoration(
                            border: InputBorder.none,
                            labelStyle: inputTextStyle,
                        ),
                        style: inputTextStyle,
                      ),
                      SizedBox(height: 20,),
                      Positioned(
                        top: -25,
                        left: 10,
                        child: Text('Name           *',style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 28,
                          backgroundColor: Colors.white ,
                          color: Colors.black38
                        ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 40),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.white70,
                      width: 3,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Stack(
                    overflow: Overflow.visible,
                    children:  [
                      TextField(
                        decoration:  InputDecoration(
                            border: InputBorder.none,
                            labelStyle: inputTextStyle,
                        ),
                        style: inputTextStyle,
                      ),
                      SizedBox(height: 20,),
                      Positioned(
                        top: -25,
                        left: 10,
                        child: Text('Email           *',style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 28,
                          backgroundColor: Colors.white ,
                          color: Colors.black38
                        ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 40),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.white70,
                      width: 3,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Stack(
                    overflow: Overflow.visible,
                    children:  [
                      TextField(
                        decoration:  InputDecoration(
                            border: InputBorder.none,
                            labelStyle: inputTextStyle,
                        ),
                        style: inputTextStyle,
                      ),
                      SizedBox(height: 20,),
                      Positioned(
                        top: -25,
                        left: 10,
                        child: Text('Contact       *',style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 28,
                          backgroundColor: Colors.white ,
                          color: Colors.black38
                        ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 40),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.white70,
                      width: 3,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Stack(
                    overflow: Overflow.visible,
                    children:  [
                      TextField(
                        decoration:  InputDecoration(
                            border: InputBorder.none,
                            labelStyle: inputTextStyle,
                        ),
                        style: inputTextStyle,
                      ),
                      SizedBox(height: 20,),
                      const Positioned(
                        top: -25,
                        left: 10,
                        child: Text('Present Address   *',style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 28,
                          backgroundColor: Colors.white ,
                          color: Colors.black38
                        ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 40),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.white70,
                      width: 3,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Stack(
                    overflow: Overflow.visible,
                    children:  [
                      TextField(
                        decoration:  InputDecoration(
                            border: InputBorder.none,
                            labelStyle: inputTextStyle,
                        ),
                        style: inputTextStyle,
                      ),
                      SizedBox(height: 20,),
                      Positioned(
                        top: -25,
                        left: 10,
                        child: Text('Permanent Address      *',style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 28,
                          backgroundColor: Colors.white ,
                          color: Colors.black38
                        ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 100,
            right: 30,
            child: ElevatedButton(
              onPressed: (){},
              style: ElevatedButton.styleFrom(
                primary: Colors.deepOrangeAccent,
                padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 10)
              ),
              child: Text('Submit',
                style: inputTextStyle,
              ),
            ),
          )
        ],
      ),
    );
  }
}
