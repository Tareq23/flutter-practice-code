import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:firebase_auth/firebase_auth.dart';

class HomePage extends StatelessWidget {
  User user;
  HomePage({required this.user});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeState(user),
    );
  }
}

class HomeState extends StatefulWidget {
  User user;
  HomeState(this.user,{Key? key}) : super(key: key);

  @override
  _HomeStateState createState() => _HomeStateState(this.user);
}

class _HomeStateState extends State<HomeState> {
  User user;
  _HomeStateState(this.user);
  @override
  Widget build(BuildContext context) {
    // var parentWidth = MediaQuery.of(context).size.width-40;
    // var parentHeight = MediaQuery.of(context).size.height/3;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple[300],
        title: const Text('Google Auth',style: TextStyle(fontSize: 22,fontWeight: FontWeight.w700,color: Colors.white70),),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
              ),
              child: Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.05,
                ),
                decoration: BoxDecoration(
                  color: Colors.yellowAccent
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.30,
                      child: CircleAvatar(
                        radius: 100,
                        backgroundImage: NetworkImage(user.photoURL.toString()),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.60,
                      child: Column(
                        children: [
                          Text("Name : ${user.displayName}"),
                          Text("Email : ${user.email}"),
                          Text("Phone Number : ${user.phoneNumber}"),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
