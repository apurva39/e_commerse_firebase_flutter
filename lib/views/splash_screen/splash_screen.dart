
import 'package:e_commerse_firebase_flutter/constants/consts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../auth_screen/login_screen.dart';
import '../../constants/colors.dart';
import '../../constants/images.dart';
import '../../widgets_common/applogo.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {


  changeScreen()
  {
    Future.delayed(const Duration(seconds: 3),() {
      Get.to(() => const LoginScreen());
    }
      );
  }

  @override
  void initState() {
    changeScreen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundColor,
      // backgroundColor: Colors.red,
      body: Center(
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
                child: Image.asset(icSplashBg,width: 300,)),
            20.heightBox,
            appLogoWidget(),
            10.heightBox,
            "Apurva Cart".text.white.bold.make(),

            Spacer(),
            "@Apurva Anand".text.fontWeight(FontWeight.normal).white.make(),

          ],
        ),
      ),
    );

  }
}
