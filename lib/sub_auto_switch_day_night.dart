import 'package:flutter/material.dart';

class SubAutoSwitchDayNight extends StatelessWidget {
  const SubAutoSwitchDayNight({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SubAutoSwitchDayNightState(),
    );
  }
}
class SubAutoSwitchDayNightState extends StatefulWidget {
  const SubAutoSwitchDayNightState({Key? key}) : super(key: key);

  @override
  _SubAutoSwitchDayNightState createState() => _SubAutoSwitchDayNightState();
}

class _SubAutoSwitchDayNightState extends State<SubAutoSwitchDayNightState> {
  bool _switch =false;
  ThemeData _dark = ThemeData(brightness: Brightness.dark);
  ThemeData light = ThemeData(brightness: Brightness.light);
  String _dayImgUrl = "https://media.istockphoto.com/photos/beautiful-landscape-in-park-with-tree-and-green-grass-field-at-picture-id1021170914?b=1&k=20&m=1021170914&s=170667a&w=0&h=t15j_mA2H1--bs23MczpFe0LazJCiBowbRKWk9wBjMA=";
  String _nightImgUrl = "https://cdn.pixabay.com/photo/2013/06/20/13/52/world-140304__340.jpg";
  String _currentImgUrl = "";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: _switch ? _dark : light,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Day and Night'),
        ),
        body: Stack(
          children: [
            Image(
              image: _switch == false ? NetworkImage(_dayImgUrl) : NetworkImage(_nightImgUrl),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              fit: BoxFit.cover,
            ),
            Center(
              // top: 100,
              child: Text(
                "Day Image",
                style: TextStyle(
                  color: _switch == false ? Colors.black : Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.w600
                ),
              ),
            )
          ],
        )
      ),

    );
  }
}

