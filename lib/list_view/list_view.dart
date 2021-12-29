import 'package:demoapp/model/student.dart';
import 'package:flutter/material.dart';

class ShowStudentList extends StatelessWidget {
  int selected = 0;
  PageController pageController = PageController();
  final _list = Student.generateStudent();
  @override
  Widget build(BuildContext context) {
    // var width =  MediaQuery.of(context).size.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Show Student List'),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Row(
              children: [
                Container(
                  height: 55,
                  // width: MediaQuery.of(context).size.width,
                  // width: width,
                  decoration: BoxDecoration(color: Colors.blueAccent[400],),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {

                        },
                        child: Text(
                          'cse'.toUpperCase(),
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w600,
                            color: selected == 0 ? Colors.deepOrange : Colors.black38,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  // Scaffold _homeWidget(BuildContext context) {
  //   _width = MediaQuery.of(context).size.width;
  //   return Scaffold(
  //     appBar: AppBar(
  //       title: const Text('Show Student List'),
  //       centerTitle: true,
  //     ),
  //     body: Column(
  //       children: [
  //         Row(
  //           children: [
  //             Container(
  //               height: 55,
  //               width: MediaQuery.of(context).size.width,
  //               decoration: BoxDecoration(
  //                 color: Colors.blueAccent[400],
  //               ),
  //               child: Row(
  //                 children: [
  //                   GestureDetector(
  //                     onTap: () {
  //
  //                     },
  //                     child: Text(
  //                       'cse'.toUpperCase(),
  //                        style: TextStyle(
  //                         fontSize: 30,
  //                         fontWeight: FontWeight.w600,
  //                         color: selected == 0 ? Colors.deepOrange : Colors.black38,
  //                       ),
  //                     ),
  //                   ),
  //                 ],
  //               ),
  //             )
  //           ],
  //         )
  //       ],
  //     ),
  //   );
  // }
}
