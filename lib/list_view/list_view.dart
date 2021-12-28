import 'package:flutter/material.dart';


class ShowStudentList extends StatelessWidget {

  int selected = 0;



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: _homeWidget(context),
    );
  }

  Scaffold _homeWidget(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Show Student List'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Row(
            children: [
              Container(
                child: GestureDetector(
                  onTap: (){},
                  child: Text(
                    'cse'.toUpperCase(),
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                      color: selected == 0 ? Colors.deepOrange : Colors.black38,
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
