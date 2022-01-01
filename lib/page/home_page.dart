import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeState(),
    );
  }
}

class HomeState extends StatefulWidget {
  const HomeState({Key? key}) : super(key: key);

  @override
  _HomeStateState createState() => _HomeStateState();
}

class _HomeStateState extends State<HomeState> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple[300],
        title: const Text('Google Auth',style: TextStyle(fontSize: 22,fontWeight: FontWeight.w700,color: Colors.white70),),
      ),
      body: Column(
        children: [
          SizedBox(height: 150,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                margin: const EdgeInsets.all(0),
                padding: const  EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.deepOrangeAccent,
                  ),

                  onPressed: (){},
                  icon: const FaIcon(FontAwesomeIcons.google),
                  label: const Text('Google Sign In',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 22,
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
