
import 'package:demoapp/page/home_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignInState(),
    );
  }
}

class SignInState extends StatefulWidget {
  const SignInState({Key? key}) : super(key: key);

  @override
  _SignInStateState createState() => _SignInStateState();
}

class _SignInStateState extends State<SignInState> {
  // AuthCredential get credential => null;



  Future signInGoogle() async {
    // final GoogleSignInAccount googleSignInAccount = await GoogleSignIn().signIn();
    // final GoogleSignInAuthentication googleSignInAuthentication = await googleSignInAccount.authentication;
    final googleSignInAccount = await GoogleSignIn().signIn();
    final GoogleSignInAuthentication googleSignInAuthentication = await googleSignInAccount!.authentication;
    AuthCredential credential = GoogleAuthProvider.credential(
      idToken: googleSignInAuthentication.idToken,
      accessToken: googleSignInAuthentication.accessToken,
    );
    UserCredential result = await FirebaseAuth.instance.signInWithCredential(credential);

    User? user = result.user;

    if(user != null)
    {
       Navigator.push(context, MaterialPageRoute(builder: (context)=> HomePage(user: user,)));
    }

  }


  @override
  Widget build(BuildContext context) {
    var parentWidth = MediaQuery.of(context).size.width-40;
    var parentHeight = MediaQuery.of(context).size.height/3;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple[300],
        title: const Text('Google Auth',style: TextStyle(fontSize: 22,fontWeight: FontWeight.w700,color: Colors.white70),),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
            width: parentWidth,
            height: parentHeight,
            decoration: BoxDecoration(
              color: Colors.deepOrangeAccent,
              borderRadius: BorderRadius.circular(30),
              border: Border.all(
                color: Colors.white70,
                width: 3,
              ),
            ),
            child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  elevation: 20,
                  onPrimary: Colors.black38,
                  textStyle: const TextStyle(color: Colors.purpleAccent,fontSize: 22,fontWeight: FontWeight.w600),
                ),
                onPressed: (){
                  signInGoogle();
                },
                icon: const FaIcon(FontAwesomeIcons.google,color: Colors.greenAccent,size: 30,),
                label: const Text('Google Sign In')
            ),
          )
        ],
      ),
    );
  }
}
