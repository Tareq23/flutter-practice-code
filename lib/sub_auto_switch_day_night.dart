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
  bool _switch = true;
  ThemeData _dark = ThemeData(brightness: Brightness.dark);
  ThemeData light = ThemeData(brightness: Brightness.light);
  @override
  Widget build(BuildContext context) {
    var imgWidth = MediaQuery.of(context).size.width / 2 - 40;
    var imgHeight = 300.0;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: _switch ? _dark : light,
      home: Scaffold(
          appBar: AppBar(
            title: Text('Day and Night',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 38),),
            centerTitle: true,
          ),
          body: Stack(
              children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 10, right: 10, top: 20, bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: imgWidth,
                          height: imgHeight,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(130)),
                          ),
                          child: const Image(
                            image: NetworkImage(
                              "https://cdn.pixabay.com/photo/2017/02/02/12/21/nature-2032666__340.jpg",
                            ),
                            width: double.infinity,
                            height: double.infinity,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          width: imgWidth,
                          height: imgHeight,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(130)),
                          ),
                          child: const Image(
                            image: NetworkImage(
                              "https://media.istockphoto.com/photos/teenager-friends-sitting-together-and-laughing-picture-id1278978403?b=1&k=20&m=1278978403&s=170667a&w=0&h=DttaPDTNMxi7p7hi41F2YLuqkl3AMB0yINjc9dm8hPM=",
                            ),
                            width: double.infinity,
                            height: double.infinity,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 10, right: 10, top: 20, bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: imgWidth,
                          height: imgHeight,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(130)),
                          ),
                          child: const Image(
                            image: NetworkImage(
                              "https://media.istockphoto.com/photos/friends-celebrates-beginning-of-winter-in-mountains-picture-id1286815964?b=1&k=20&m=1286815964&s=170667a&w=0&h=SCPRmiM747uEeiWhk6Sq7jJMAl_D1mHONDLjeoid2sw=",
                            ),
                            width: double.infinity,
                            height: double.infinity,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          width: imgWidth,
                          height: imgHeight,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(130)),
                          ),
                          child: const Image(
                            image: NetworkImage(
                              "https://cdn.pixabay.com/photo/2017/02/02/12/21/nature-2032666__340.jpg",
                            ),
                            width: double.infinity,
                            height: double.infinity,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 10, right: 10, top: 20, bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: imgWidth,
                          height: imgHeight,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(130)),
                          ),
                          child: const Image(
                            image: NetworkImage(
                              "https://media.istockphoto.com/photos/friends-celebrates-beginning-of-winter-in-mountains-picture-id1286815964?b=1&k=20&m=1286815964&s=170667a&w=0&h=SCPRmiM747uEeiWhk6Sq7jJMAl_D1mHONDLjeoid2sw=",
                            ),
                            width: double.infinity,
                            height: double.infinity,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          width: imgWidth,
                          height: imgHeight,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(130)),
                          ),
                          child: const Image(
                            image: NetworkImage(
                              "https://media.istockphoto.com/photos/teenager-friends-sitting-together-and-laughing-picture-id1278978403?b=1&k=20&m=1278978403&s=170667a&w=0&h=DttaPDTNMxi7p7hi41F2YLuqkl3AMB0yINjc9dm8hPM=",
                            ),
                            width: double.infinity,
                            height: double.infinity,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
                Positioned(
                  left: 30,
                  bottom: 200,
                  child: Container(
                    width: imgWidth*2+20,
                    height: 100,
                    color: Colors.deepPurple.withOpacity(0.7),
                    child: Switch(
                      splashRadius: 30,
                      inactiveThumbColor: Colors.greenAccent,
                      activeColor: Colors.deepOrange,
                      value: _switch,
                      onChanged: (switchChange){
                        setState(() {
                          _switch = switchChange;
                        });
                      },
                    ),
                  ),
                )
          ])),
    );
  }
}
