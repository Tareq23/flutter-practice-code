import 'package:flutter/material.dart';


void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar:AppBar(
            title: const Text("Drawer Widget"),

          ),

          drawer:  Drawer(

            child: ListView(
              padding: const EdgeInsets.only(top:20,),
              children: const [
                UserAccountsDrawerHeader(
                    accountName:  Text("User Account"),
                    accountEmail:  Text("example@checker.com"),
                    currentAccountPicture: CircleAvatar(
                      backgroundImage: NetworkImage("https://cdn.pixabay.com/photo/2021/09/13/05/34/kid-6620283_960_720.jpg"),
                    ),
                ),
                ListTile(
                  title: Text("Contact"),
                  // trailing: Icon(Icons.contact_mail),
                  trailing: Icon(Icons.arrow_forward),
                ),
                ListTile(
                  title: Text("Portfolio"),
                  // trailing: Icon(Icons.contact_mail),
                  trailing: Icon(Icons.arrow_forward),
                ),ListTile(
                  title: Text("Social Info"),
                  // trailing: Icon(Icons.contact_mail),
                  trailing: Icon(Icons.arrow_forward),
                ),ListTile(
                  title: Text("Team"),
                  // trailing: Icon(Icons.contact_mail),
                  trailing: Icon(Icons.arrow_forward),
                ),ListTile(
                  title: Text("Address"),
                  // trailing: Icon(Icons.contact_mail),
                  trailing: Icon(Icons.arrow_forward),
                ),ListTile(
                  title: Text("Education Info"),
                  // trailing: Icon(Icons.contact_mail),
                  trailing: Icon(Icons.arrow_forward),
                ),ListTile(
                  title: Text("Logout"),
                  // trailing: Icon(Icons.contact_mail),
                  trailing: Icon(Icons.arrow_forward),
                ),
              ],
            ),
          ),
        ),

    );
  }

}














class CustomStatefulWidget extends StatefulWidget
{
  const CustomStatefulWidget({Key? key}) : super(key: key);

  @override
  _MyState createState () => _MyState();
}

class _MyState extends State<CustomStatefulWidget>
{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      // appBar: AppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children:  [
                const Text("Hello world"),
                Container(
                  width: 200,
                  height: 200,
                  color: Colors.green,
                  child: const Text("Container Widget", style: TextStyle(
                    fontSize: 30,
                  ),),
                ),
                Container(
                  width: 200,
                  height: 200,
                  color: Colors.red,
                  child: const Text("Container Widget", style: TextStyle(
                    fontSize: 30,
                  ),),
                ),
                Container(
                  width: 200,
                  height: 200,
                  // margin: EdgeInsets.all(20),
                  color: Colors.blue,
                  child: const Text("Container Widget", style: TextStyle(
                    fontSize: 30,
                  ),),
                ),
                Container(
                  width: 200,
                  height: 200,
                  color: Colors.deepPurple,
                  child: const Text("Container Widget", style: TextStyle(
                    fontSize: 30,
                  ),),
                ),
                Container(
                  width: 200,
                  height: 200,
                  color: Colors.blue,
                  child: const Text("Container Widget", style: TextStyle(
                    fontSize: 30,
                  ),),
                ),
                Container(
                  width: 200,
                  height: 200,
                  color: Colors.yellow,
                  child: const Text("Container Widget", style: TextStyle(
                    fontSize: 30,
                  ),),
                ),
                Container(
                  width: 200,
                  height: 200,
                  color: Colors.blue,
                  child: const Text("Container Widget", style: TextStyle(
                    fontSize: 30,
                  ),),
                ),
                Container(
                  width: 200,
                  height: 200,
                  color: Colors.pink,
                  child: const Text("Container Widget", style: TextStyle(
                    fontSize: 30,
                  ),),
                ),
                Container(
                  width: 200,
                  height: 200,
                  color: Colors.blue,
                  child: const Text("Container Widget", style: TextStyle(
                    fontSize: 30,
                  ),),
                ),
                Container(
                  width: 200,
                  height: 200,
                  color: Colors.yellow,
                  child: const Text("Container Widget", style: TextStyle(
                    fontSize: 30,
                  ),),
                ),
                Container(
                  width: 200,
                  height: 200,
                  color: Colors.blue,
                  child: const Text("Container Widget", style: TextStyle(
                    fontSize: 30,
                  ),),
                ),
                Container(
                  width: 200,
                  height: 200,
                  color: Colors.black,
                  child: const Text("Container Widget", style: TextStyle(
                    fontSize: 30,
                  ),),
                ),
              ],
            ),
          ),
        )
      )
    );
  }
}