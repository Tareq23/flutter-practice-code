import 'package:flutter/material.dart';

void main(){


  runApp(MyApp());

}

class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  Scaffold(
        appBar: AppBar(
          // title: const Text("Horizontal widget", style: TextStyle(fontSize: 36,fontWeight: FontWeight.w900),),
          title: const FlutterLogo(
            textColor: Colors.green,
            size: 25.0,
          ),
          centerTitle: true,
          elevation: 0.0,
          backgroundColor: Colors.white,
          leading: IconButton(
            onPressed: (){},
            icon: const Icon(Icons.arrow_back,color: Colors.grey,size: 30.0,),
          ),
          actions: [
            IconButton(onPressed: (){}, icon: const Icon(Icons.menu, color: Colors.grey,size: 30.0,))
          ],
        ),
        body: ListView(
          shrinkWrap: true,
          children: <Widget> [
            Stack(
              children: [
                Container(
                  // decoration: BoxDecoration(
                  //   // backgroundBlendMode: BlendMode.colorBurn,
                  // ),
                  alignment: const Alignment(0.0,-.30),
                  height: 80.0,
                  color: Colors.white,
                  child: const Text("Get Coaching",style: TextStyle(fontSize: 36.0),),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(20.0, 90.0, 20.0, 20.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.0),
                    boxShadow: const [
                      BoxShadow(
                        blurRadius: 2.0,
                        color: Colors.grey,
                      )
                    ]
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Stack(

                        children: <Widget> [
                          Container(
                            padding: const EdgeInsets.fromLTRB(25.0, 10.0, 5.0, 5.0),
                            child: const Text(
                              'You Have',
                              style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                                fontSize: 14.0
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.fromLTRB(25.0, 30.0, 5.0, 10.0),
                            child: const Text(
                              '200',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 30.0,
                              ),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(width: 180.0,),
                      Container(
                        height: 50.0,
                        width: 125.0,
                        decoration: BoxDecoration(
                          color: Colors.greenAccent[100]!.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: const Center(
                          child: Text(
                            'Buy more',
                            style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(height:50.0),
            Container(
              padding: const EdgeInsets.only(left: 25.0,right: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:  const [
                   const Text("My Coaches",style: TextStyle(color: Colors.grey,fontSize: 18.0),),
                   Text("View Past Sessions",style: TextStyle(color: Colors.greenAccent,fontSize: 18.0),),
                ],
              ),
            ),
            const SizedBox(height: 50.0,),
            // GridView(gridDelegate: gridDelegate)
            GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 2.0,
              mainAxisSpacing: 4.0,
              shrinkWrap: true,
              children: <Widget> [
                  _buildCard('Tom', 'Available', 1),
                  // _buildCard('Tom', 'Available', 1),
              ],
            ),
          ],
        ),
      )
    );
  }

  Widget _buildCard(String name, String status, int cardIndex)
  {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      elevation: 7.0,
      child: Column(
        children: [
          const SizedBox(height: 12.0,),
          Stack(
            children: [
              Container(
                height: 60.0,
                width: 60.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(35.0),
                  color: Colors.green,
                  image: const DecorationImage(
                    image: NetworkImage('https://cdn.pixabay.com/photo/2021/11/02/10/46/cat-6762936_960_720.jpg'),
                  )
                ),
              ),
              const SizedBox(height: 10.0,),
              Text(
                status,
                style: const TextStyle(
                  color:Colors.green,
                  fontWeight: FontWeight.bold,
                  fontSize: 12.0,
                ),
              ),
              SizedBox(height: 15.0,),
              Expanded(
                // flex: 1,
                child: Container(),
                // child: Container(
                //   width: 175.0,
                //   decoration: BoxDecoration(
                //     color: status == 'Away' ? Colors.green : Colors.grey,
                //     borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(10.0), bottomRight: Radius.circular(10.0)),
                //   ),
                //   child: const Center(
                //     child: Text(
                //       'Request',
                //       style: TextStyle(
                //         color: Colors.white,
                //       ),
                //     ),
                //   ),
                // ),
              ),
            ],
          )
        ],
      ),
      margin: cardIndex.isEven ? const EdgeInsets.fromLTRB(10.0, 0.0, 25.0, 10.0) : const EdgeInsets.fromLTRB(25.0, 0.0, 10.0, 10.0),
    );
  }
}