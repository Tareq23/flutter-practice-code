

import 'package:demoapp/page/home_page.dart';
import 'package:flutter/cupertino.dart';

import 'package:firebase_core/firebase_core.dart';

Future main() async
{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(HomePage());
}