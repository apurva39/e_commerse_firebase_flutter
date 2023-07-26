
import 'package:e_commerse_firebase_flutter/views/home_screen/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'auth_screen/home.dart';
import 'auth_screen/login_screen.dart';



void main() {
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
      // home: SplashScreen(),
      home: HomeScreen(),
    );

  }
}
