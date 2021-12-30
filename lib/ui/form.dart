

import 'package:flutter/material.dart';

class FormWidget extends StatelessWidget {
  const FormWidget({Key? key}) : super(key: key);

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
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
                Container(
                  height: 80,
                  width: _width,
                  padding: const EdgeInsets.only(top:10,bottom: 10),
                  alignment: Alignment.center,
                  color: Colors.lightGreenAccent,
                  child: Text('Form Page'.toUpperCase(),style: const TextStyle(
                    fontSize: 34,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),),
                ),
              Stack(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height - 80,
                    child: const Image(
                      image: NetworkImage(
                        'https://cdn.pixabay.com/photo/2018/08/14/13/23/ocean-3605547__340.jpg',
                      ),
                      width: double.infinity,
                      height: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    top: 20,
                    left: 10,
                    right: 10,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Present Address *',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Color(0xffffffff),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 15,bottom: 20),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: const Color(0xffE6E6E6),
                              width: 3,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Stack(
                            overflow: Overflow.visible,
                            children: const [
                              TextField(
                                decoration: InputDecoration(
                                    border: InputBorder.none
                                ),
                              ),
                              Positioned(
                                top: -10,
                                left: 10,
                                child: Text('District           *',style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15,
                                  backgroundColor: Color(0xffFAFAFA) ,
                                  color: Color(0xff142D52),
                                ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Text('Permanent Address *',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Color(0xffffffff),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 15,bottom: 10),
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Color(0xffE6E6E6),
                                width: 3,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Stack(
                              overflow: Overflow.visible,
                              children: const [
                                TextField(
                                  decoration: InputDecoration(
                                      border: InputBorder.none
                                  ),
                                ),
                                Positioned(
                                  top: -10,
                                  left: 10,
                                  child: Text('District           *',style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 15,
                                    backgroundColor: Color(0xffFAFAFA) ,
                                    color: Color(0xff142D52),
                                  ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 20),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Color(0xffE6E6E6),
                              width: 3,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Stack(
                            overflow: Overflow.visible,
                            children: [
                              TextField(
                                decoration: InputDecoration(
                                    border: InputBorder.none
                                ),
                              ),
                              SizedBox(height: 20,),
                              Positioned(
                                top: -10,
                                left: 10,
                                child: Text('Street/Vill           *',style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15,
                                  backgroundColor: Color(0xffFAFAFA) ,
                                  color: Color(0xff142D52),
                                ),
                                ),
                              ),
                              Positioned(
                                top: -10,
                                left: 10,
                                child: Text('Street or Village       *',style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15,
                                  backgroundColor: Color(0xffFAFAFA) ,
                                  color: Color(0xff142D52),
                                ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 20),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Color(0xffE6E6E6),
                              width: 3,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Stack(
                            overflow: Overflow.visible,
                            children: [
                              TextField(
                                decoration: InputDecoration(
                                    border: InputBorder.none
                                ),
                              ),
                              SizedBox(height: 20,),
                              Positioned(
                                top: -10,
                                left: 10,
                                child: Text('Street/Vill           *',style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15,
                                  backgroundColor: Color(0xffFAFAFA) ,
                                  color: Color(0xff142D52),
                                ),
                                ),
                              ),
                              Positioned(
                                top: -10,
                                left: 10,
                                child: Text('Mobile Number           *',style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15,
                                  backgroundColor: Color(0xffFAFAFA) ,
                                  color: Color(0xff142D52),
                                ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 20),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Color(0xffE6E6E6),
                              width: 3,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Stack(
                            overflow: Overflow.visible,
                            children: [
                              TextField(
                                decoration: InputDecoration(
                                    border: InputBorder.none
                                ),
                              ),
                              SizedBox(height: 20,),
                              Positioned(
                                top: -10,
                                left: 10,
                                child: Text('Street/Vill           *',style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15,
                                  backgroundColor: Color(0xffFAFAFA) ,
                                  color: Color(0xff142D52),
                                ),
                                ),
                              ),
                              Positioned(
                                top: -10,
                                left: 10,
                                child: Text('Mother\'s name           *',style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15,
                                  backgroundColor: Color(0xffFAFAFA) ,
                                  color: Color(0xff142D52),
                                ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 20),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Color(0xffE6E6E6),
                              width: 3,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Stack(
                            overflow: Overflow.visible,
                            children: [
                              TextField(
                                decoration: InputDecoration(
                                    border: InputBorder.none
                                ),
                              ),
                              SizedBox(height: 20,),
                              Positioned(
                                top: -10,
                                left: 10,
                                child: Text('Street/Vill           *',style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15,
                                  backgroundColor: Color(0xffFAFAFA) ,
                                  color: Color(0xff142D52),
                                ),
                                ),
                              ),
                              Positioned(
                                top: -10,
                                left: 10,
                                child: Text('Father\'s name          *',style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15,
                                  backgroundColor: Color(0xffFAFAFA) ,
                                  color: Color(0xff142D52),
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
                    bottom: 150,
                    right: 30,
                    child: OutlinedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.resolveWith<Color>((states) {
                          return Colors.purpleAccent;
                        }),
                      ),
                      onPressed: (){},
                      child: const Text('Submit',style: TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                        fontWeight: FontWeight.w500
                      ),),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

