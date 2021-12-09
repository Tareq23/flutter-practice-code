import 'package:flutter/material.dart';


class SwitchSliderTextFieldWidget extends StatelessWidget
{
   @override
   Widget build(BuildContext context)
   {
       return MaterialApp(
         debugShowCheckedModeBanner: false,
         home: Scaffold(
           appBar: PreferredSize(
             preferredSize: const Size.fromHeight(80),
             child: AppBar(
               title: const Text("Switch, TextField, Slider Widgets"),
               centerTitle: true,
             ),
           ),
           body: MyApp(),
           floatingActionButton:  FloatingActionButton(
             onPressed: (){},
             child: Icon(Icons.home,color: Colors.lightGreenAccent,),
             backgroundColor: Colors.purpleAccent.withOpacity(0.8),
           ),
         ),
       );
   }
}

class MyApp extends StatefulWidget
{
  @override
  _MyApp createState(){
    return _MyApp();
  }
}

class _MyApp extends State<MyApp>
{
  bool isSwitch = true;
  @override
  Widget build(BuildContext context){
    return Column(
      children: [
        SizedBox(height: 20,),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
          child: Row(
            children: [
              SizedBox(
                width: 150,
                height: 40,
                child: Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: <Color>[Colors.greenAccent,Colors.lightGreenAccent],
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                      )
                  ),
                  child: TextButton(
                    onPressed: (){},
                    child: const Text("TextButton"),
                  ),
                ),

              ),
              SizedBox(
                height: 40,
                child: Container(
                  margin: EdgeInsets.only(left: 10),
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: <Color>[Colors.greenAccent,Colors.lightGreenAccent],
                        begin: Alignment.topLeft,
                        end: Alignment.centerRight,
                      )
                  ),
                  child: OutlinedButton(
                    onPressed: (){},
                    child: const Text("Outlined Button"),
                  ),
                ),

              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: ElevatedButton(
                    onPressed: (){},
                    child: Text("Elevated Button"),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.purpleAccent,
                    ),
                  ),
                ),
              ),
              // SizedBox(
              //   height: 40,
              //   child: Container(
              //     margin: EdgeInsets.only(left: 10),
              //     decoration: BoxDecoration(
              //         gradient: LinearGradient(
              //           colors: <Color>[Colors.greenAccent,Colors.lightGreenAccent],
              //           begin: Alignment.topLeft,
              //           end: Alignment.centerRight,
              //         )
              //     ),
              //     child: ElevatedButton(
              //       onPressed: (){},
              //       child: const Text("Elevated Button"),
              //
              //     ),
              //   ),
              //
              // ),
            ],
          ),
        ),
        SizedBox(height: 30,),
        Center(
          child: Switch(
            value: isSwitch,
            onChanged: (value){},
            activeColor: Colors.orangeAccent,
          ),
        ),
        Slider(
            value: 30,
            min: 1,
            max: 100,
            onChanged: (value){},
          activeColor: Colors.green,
          inactiveColor: Colors.blueGrey,
        ),
        SizedBox(height: 30,),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 0,horizontal: 10),
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 30,horizontal: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              gradient: LinearGradient(
                colors: <Color>[Colors.purpleAccent.withOpacity(0.7),Colors.pinkAccent.withOpacity(0.4)],
                begin: Alignment.centerRight,
                end: Alignment.bottomRight,
                
              )
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 15),
                  child: TextFormField(
                      decoration: InputDecoration(
                        hintText: "Name",
                        labelText: "Enter Your Name",
                        labelStyle: TextStyle(fontSize: 18,color: Colors.pinkAccent),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(width: 15, color: Colors.greenAccent),
                        ),
                      ),

                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 15),
                  child: TextFormField(
                      decoration: InputDecoration(
                        hintText: "Address",
                        labelText: "Enter Your Address",
                        labelStyle: TextStyle(fontSize: 18,color: Colors.pinkAccent),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(width: 15, color: Colors.greenAccent),
                        ),
                      ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 15),
                  child: TextFormField(
                      decoration: InputDecoration(
                        hintText: "Email",
                        labelText: "Enter Your Email",
                        labelStyle: TextStyle(fontSize: 18,color: Colors.pinkAccent),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(width: 15, color: Colors.greenAccent),
                        ),
                      ),

                  ),
                ),
                TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Password",

                      labelText: "Enter Your Password",
                      labelStyle: TextStyle(fontSize: 18,color: Colors.pinkAccent),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(width: 15, color: Colors.greenAccent),
                      ),
                    ),

                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}