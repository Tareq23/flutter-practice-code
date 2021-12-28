import 'package:flutter/material.dart';

class CustomForm extends StatelessWidget {
  const CustomForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 60,
                color: Colors.deepOrange,
                child: Row(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                        size: 26,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      child: Text(
                        'Contact Details',
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 22,
                            color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 15, left: 20),
                child: const Text(
                  'Present Address *',
                  style: TextStyle(color: Colors.black38, fontSize: 18),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 15, left: 20, right: 20),
                child: Stack(
                    overflow: Overflow.visible,
                    children: [
                      TextField(
                        style: const TextStyle(fontSize: 20),
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                           borderRadius: BorderRadius.circular(20),
                         ),
                         focusedBorder: InputBorder.none,
                        ),
                      ),
                      const Positioned(
                        top: -10,
                        left: 20,
                        child:  Text('District    *',
                          style: TextStyle(fontSize: 20,color: Colors.black),
                        ),
                      ),
                  ]
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 15, left: 20),
                child: const Text(
                  'Present Address *',
                  style: TextStyle(color: Colors.black38, fontSize: 18),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 15, left: 20, right: 20),
                child: Stack(
                    overflow: Overflow.visible,
                    children: [
                      TextField(
                        style: const TextStyle(fontSize: 20),
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                           borderRadius: BorderRadius.circular(20),
                         ),
                         focusedBorder: InputBorder.none,
                        ),
                      ),
                      const Positioned(
                        top: -10,
                        left: 20,
                        child:  Text('District    *',
                          style: TextStyle(fontSize: 20,color: Colors.black),
                        ),
                      ),
                  ]
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 15, left: 20),
                child: const Text(
                  'Present Address *',
                  style: TextStyle(color: Colors.black38, fontSize: 18),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 15, left: 20, right: 20),
                child: Stack(
                    overflow: Overflow.visible,
                    children: [
                      TextField(
                        style: const TextStyle(fontSize: 20),
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                           borderRadius: BorderRadius.circular(20),
                         ),
                         focusedBorder: InputBorder.none,
                        ),
                      ),
                      const Positioned(
                        top: -10,
                        left: 20,
                        child:  Text('District    *',
                          style: TextStyle(fontSize: 20,color: Colors.black),
                        ),
                      ),
                  ]
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
