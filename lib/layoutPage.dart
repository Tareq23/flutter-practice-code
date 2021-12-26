import 'package:flutter/material.dart';

class LayoutWidget extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeWidget(),
    );
  }
}
class HomeWidget extends StatefulWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Image(
              image: NetworkImage("https://cdn.pixabay.com/photo/2021/12/14/09/50/fatherhood-6870198_960_720.jpg"),
              height: double.infinity,
              fit: BoxFit.cover,
            ),
            Positioned(
              top: 150,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 300,
                decoration: BoxDecoration(
                  // color: Colors.white.withOpacity(0.4)
                  color: Colors.transparent,
                ),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                 children: [
                    Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                      ),
                      child: Stack(
                        children: [
                          Image(
                            width: 250,
                            height: double.infinity,
                            image: NetworkImage(
                              "https://cdn.pixabay.com/photo/2021/11/09/15/32/christmas-6781762_960_720.jpg",
                            ),
                            fit: BoxFit.cover,
                          ),
                          Positioned(
                            left: 5,
                            right: 5,
                            top: 200,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Place Name',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700,color: Colors.deepOrange),),
                                ActionChip(
                                    onPressed:(){},
                                    label: Text('Show Details', style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.deepOrange),),
                                    backgroundColor: Colors.lightGreenAccent,
                                ),

                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                      ),
                      child: Stack(
                        children: [
                          Image(
                            width: 250,
                            height: double.infinity,
                            image: NetworkImage(
                              "https://cdn.pixabay.com/photo/2016/11/29/03/44/animal-1867125_960_720.jpg",
                            ),
                            fit: BoxFit.cover,
                          ),
                          Positioned(
                            left: 5,
                            right: 5,
                            top: 200,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Place Name',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700,color: Colors.deepOrange),),
                                ActionChip(
                                  onPressed:(){},
                                  label: Text('Show Details', style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.deepOrange),),
                                  backgroundColor: Colors.lightGreenAccent,
                                ),

                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                      ),
                      child: Stack(
                        children: [
                          Image(
                            width: 250,
                            height: double.infinity,
                            image: NetworkImage(
                              "https://cdn.pixabay.com/photo/2019/10/30/10/33/girl-4589231_960_720.jpg",
                            ),
                            fit: BoxFit.cover,
                          ),
                          Positioned(
                            left: 5,
                            right: 5,
                            top: 200,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Place Name',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700,color: Colors.deepOrange),),
                                ActionChip(
                                  onPressed:(){},
                                  label: Text('Show Details', style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.deepOrange),),
                                  backgroundColor: Colors.lightGreenAccent,
                                ),

                              ],
                            ),
                          ),

                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                      ),
                      child: Stack(
                        children: [
                          Image(
                            width: 250,
                            height: double.infinity,
                            image: NetworkImage(
                              "https://cdn.pixabay.com/photo/2021/02/04/13/28/bird-5981360_960_720.jpg",
                            ),
                            fit: BoxFit.cover,
                          ),
                          Positioned(
                            left: 5,
                            right: 5,
                            top: 200,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Place Name',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700,color: Colors.deepOrange),),
                                ActionChip(
                                  onPressed:(){},
                                  label: Text('Show Details', style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.deepOrange),),
                                  backgroundColor: Colors.lightGreenAccent,
                                ),

                              ],
                            ),
                          ),

                        ],
                      ),
                    ),
                 ],
                ),
              ),
            ),
            Positioned(
              left: 10,
              bottom: 10,
              right: 10,
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    // SizedBox(
                    //   height: MediaQuery.of(context).size.height - 250,
                    // ),
                    Text(
                        "In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to "
                            "demonstrate the visual form of a document or a typeface without relying on meaningful content.",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 2
                      ),
                    ),
                    Row(
                      children: [
                        ActionChip(
                            label: Text("ActionChip",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w500),),
                            onPressed: (){},
                            backgroundColor: Colors.redAccent,
                        ),
                        SizedBox(width: 30,),
                        ActionChip(
                            label: Text("ActionChip",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w500),),
                            onPressed: (){},
                            backgroundColor: Colors.blueGrey,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
