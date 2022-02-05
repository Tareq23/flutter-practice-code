import 'package:flutter/material.dart';

class CustomVCard extends StatelessWidget {
  const CustomVCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Card Widget",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
          ),
          centerTitle: true,
        ),
        body: CustomCard(),
      ),
    );
  }
}

class CustomCard extends StatefulWidget {
  const CustomCard({Key? key}) : super(key: key);

  @override
  _CustomCardState createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: <Color>[Colors.lightGreenAccent, Colors.purple.shade600],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter)),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            height: MediaQuery.of(context).size.height / 20,
          ),
          CircleAvatar(
            backgroundImage: NetworkImage(
                "https://cdn.pixabay.com/photo/2015/06/22/08/40/child-817373_960_720.jpg"),
            radius: MediaQuery.of(context).size.width / 6,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 45,
          ),
          Text(
            "Md Tarequl Islam",
            style: TextStyle(
                fontSize: 30,
                color: Colors.brown,
                fontWeight: FontWeight.w500,
                fontFamily: 'AbrilFatface'),
          ),
          Text(
            'Flutter Android Developer',
            style: TextStyle(
              fontSize: 30,
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontFamily: 'Pacifico',
              letterSpacing: 3,
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Container(
              width: MediaQuery.of(context).size.width - 40,
              child: Card(
                elevation: 4.0,
                child: ListTile(
                  onTap: () {},
                  title: Text(
                    'mdtarequlislam@gmail.com',
                    style: TextStyle(fontSize: 22),
                  ),
                  leading: Icon(Icons.email),
                ),
              )
          ),
          SizedBox(
            height: 25,
          ),
          Container(
              width: MediaQuery.of(context).size.width - 40,
              child: Card(
                elevation: 4.0,
                child: ListTile(
                  onTap: () {},
                  title: Text(
                    '01723434285',
                    style: TextStyle(fontSize: 22),
                  ),
                  leading: Icon(Icons.phone_bluetooth_speaker_sharp),
                ),
              )
          ),
          Card(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 25,horizontal: 35),
              child: Text("Rounded Corner",style: TextStyle(fontSize: 22,fontWeight: FontWeight.w600),),
            ),
            elevation: 8,
            shadowColor: Colors.green,
            margin: EdgeInsets.all(20),
            shape:  OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Colors.white)
            ),
          ),
          Card(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 25,horizontal: 35),
              child: Text("Border and border color",style: TextStyle(fontSize: 22,fontWeight: FontWeight.w600),),
            ),
            elevation: 8,
            shadowColor: Colors.green,
            margin: EdgeInsets.all(20),
            shape:  OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Colors.green, width: 2)
            ),
          )
        ],
      ),
    );
  }
}
