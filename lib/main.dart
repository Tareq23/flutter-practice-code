import 'package:demoapp/ButtonPracticeWidget.dart';
import 'package:flutter/material.dart';


void main(){
  // runApp(MyApp());

  runApp(ButtonPracticeWidget());

}







class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: Scaffold(
          // appBar:AppBar(
          //   title: const Text("Drawer Widget"),
          //
          // ),
          body: SafeArea(child: MyState()),

          // drawer:  Drawer(
          //
          //   child: ListView(
          //     padding: const EdgeInsets.only(top:20,),
          //     children: const [
          //       UserAccountsDrawerHeader(
          //           decoration: BoxDecoration(
          //             color: Colors.redAccent,
          //           ),
          //           accountName:  Text("User Account",  style: TextStyle(color:Colors.white, fontSize: 26.0,fontWeight: FontWeight.bold),),
          //           accountEmail:  Text("example@checker.com", style: TextStyle(color:Colors.white, fontSize: 20.0),),
          //           currentAccountPicture: CircleAvatar(
          //             backgroundImage: NetworkImage("https://cdn.pixabay.com/photo/2021/09/13/05/34/kid-6620283_960_720.jpg"),
          //           ),
          //       ),
          //       ListTile(
          //         title: Text("Contact"),
          //         // trailing: Icon(Icons.contact_mail),
          //         trailing: Icon(Icons.arrow_forward),
          //       ),
          //       ListTile(
          //         title: Text("Portfolio"),
          //         // trailing: Icon(Icons.contact_mail),
          //         trailing: Icon(Icons.arrow_forward),
          //       ),ListTile(
          //         title: Text("Social Info"),
          //         // trailing: Icon(Icons.contact_mail),
          //         trailing: Icon(Icons.arrow_forward),
          //       ),ListTile(
          //         title: Text("Team"),
          //         // trailing: Icon(Icons.contact_mail),
          //         trailing: Icon(Icons.arrow_forward),
          //       ),ListTile(
          //         title: Text("Address"),
          //         // trailing: Icon(Icons.contact_mail),
          //         trailing: Icon(Icons.arrow_forward),
          //       ),ListTile(
          //         title: Text("Education Info"),
          //         // trailing: Icon(Icons.contact_mail),
          //         trailing: Icon(Icons.arrow_forward),
          //       ), ListTile(
          //         title: Text("Logout"),
          //         // trailing: Icon(Icons.contact_mail),
          //         trailing: Icon(Icons.arrow_forward),
          //       ),
          //     ],
          //   ),
          // ),
        ),

    );
  }

}


class MyState extends StatefulWidget
{
  @override
  _MyStates createState(){
    return _MyStates();
  }
}


class _MyStates extends State<MyState>
{
  @override
  Widget build(BuildContext context){
    return Column(
      children: [
        Expanded(
          flex: 1,
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              color: Colors.green,
            ),
            child: const Text("Box 1",style: TextStyle(fontSize: 26,fontWeight: FontWeight.bold),),
          ),
        ),Expanded(
          flex: 2,
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              color: Colors.redAccent,
            ),
            child: const Text("Box 2",style: TextStyle(fontSize: 26,fontWeight: FontWeight.bold),),
          ),
        ),Expanded(
          flex: 1,
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              color: Colors.greenAccent,
            ),
            child: const Text("Box 3",style: TextStyle(fontSize: 26,fontWeight: FontWeight.bold),),
          ),
        ),
        Expanded(
          flex: 4,
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              color: Colors.redAccent,
            ),
            child: const Center(child:  Text("Box 4",style: TextStyle(fontSize: 26,fontWeight: FontWeight.bold),)),
          ),
        ),
      ],
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