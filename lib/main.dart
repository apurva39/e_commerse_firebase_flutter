
import 'package:e_commerse_firebase_flutter/views/category_screen/category_screen.dart';
import 'package:e_commerse_firebase_flutter/views/home_screen/home_screen.dart';
import 'package:e_commerse_firebase_flutter/views/profile_screen/profile_screen.dart';
import 'package:e_commerse_firebase_flutter/views/splash_screen/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'auth_screen/home.dart';
import 'auth_screen/login_screen.dart';



void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      // title: appname,
      title:"apurva",
      theme: ThemeData(),
      // home: Home(),
      // home: ProfileScreen(),
      home: Home(),
    );

  }
}
