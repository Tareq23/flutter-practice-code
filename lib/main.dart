import 'package:flutter/material.dart';

void main()
{
  runApp(ScaffoldWidgetPractice());
}

class ScaffoldWidgetPractice extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: _StateFulWidget()
    );
  }

}

class _StateFulWidget extends StatefulWidget{
  @override
  MyStatefulWidget createState() => MyStatefulWidget();
}

class MyStatefulWidget extends State<_StateFulWidget>
{
  int count=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Flutter Scaffold Widget"),
          centerTitle: true,
        ),
      body: Center(
        child:Text("The have pressed the ___count times",style:TextStyle(color:Colors.greenAccent,fontSize: 28.0)),

      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: Container(
          height: 50.0,
        )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => setState(() {
          count++;
          print(count);
        }),
        tooltip: 'Increment Counter',
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startDocked,
      drawer: Drawer(
        elevation: 8.0,
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              accountEmail: Text('tareq@gmail.com'),
              accountName: Text('tareq23'),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.yellow,
                child: Text('abc')
              ),
            ),
            ListTile(
              title: Text("Inbox"),
              leading: Icon(Icons.mail),
            ),
            Divider(
              height: 2.0,
            ),
            ListTile(
                title: Text("People"),
              leading: Icon(Icons.people),
            ),
            ListTile(
              title: Text("Promotion"),
              leading: Icon(Icons.local_offer),
            ),
            ListTile(
              title: Text("Primary"),
              leading: Icon(Icons.people),
            )
          ],
        )
      ),
    );
  }

}






