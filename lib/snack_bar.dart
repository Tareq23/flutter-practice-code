import 'package:flutter/material.dart';

class SnackBarWidget extends StatelessWidget {
  const SnackBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // final _textColorWhite = Colors.white;

  final GlobalKey<ScaffoldState> _scaffoldState = GlobalKey<ScaffoldState>();

  PageController pageController = PageController();
  var selected = 0;
  final _textColorGrey = Colors.grey;
  final tablist = ['Show-SnackBar','Show-Toast'];

  @override
  Widget build(BuildContext context) {
    var _width =  MediaQuery.of(context).size.width;
    var toast_or_snackbar = 'snackbar';
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snack Bar'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 57,
            margin: const EdgeInsets.only(left: 20,right: 20, top: 30),
            color: Colors.deepOrange[400],
            child:  ListView.separated(
                // controller: pageController,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context,index){
                  return GestureDetector(
                    onTap: (){
                      setState(() {
                        selected = index;
                      });
                      
                    },
                    child: Container(
                      height: double.infinity,
                      width: (_width-40)/2,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: selected == index ? Colors.indigo : null,
                      ),
                      child: Text(
                        tablist[index],
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                          color: selected == index ? Colors.white : Colors.blueGrey,
                        ),
                      ),
                    ),
                  );
                },
                separatorBuilder: (context,index) {
                  return SizedBox();
                },
                itemCount: tablist.length
            ),
          ),
          const SizedBox(height: 40,),

          // selected == 0 ? Container(
          //   child: OutlinedButton(
          //     onPressed: (){
          //
          //     },
          //     child: Text('Click for snack'),
          //   ),
          // )



        ],
      ),
    );
  }
  _showSnack(){
    var _mySnackBar = SnackBar(content: Text("Hey, This is Snack bar"));
        _scaffoldState.currentState!.showSnackBar(_mySnackBar);
    // if(selected == 0)
    //   {
    //     var _mySnackBar = SnackBar(content: Text("Hey, This is Snack bar"));
    //     _scaffoldState.currentState!.showSnackBar(_mySnackBar);
    //   }
    // else null;
  }
}
