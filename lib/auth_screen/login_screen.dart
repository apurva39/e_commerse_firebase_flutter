
import 'package:e_commerse_firebase_flutter/auth_screen/signUp_screen.dart';
import 'package:e_commerse_firebase_flutter/constants/consts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../constants/colors.dart';
import '../constants/lists.dart';
import '../widgets_common/applogo.dart';
import '../widgets_common/custom_textFeilds.dart';
import '../widgets_common/our_button.dart';
import 'home.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundColor,
      body: Center(
        child: Column(
          children: [
            (context.screenHeight*0.1).heightBox,
            appLogoWidget(),
            10.heightBox,
            "Log In".text.white.fontWeight(FontWeight.w700).size(30).make(),

            CustomTextFeilds(),
            17.heightBox,
            OurButton(title1:"Log In",textColor: Colors.white,onPress: (){
              Get.to(()=>Home());
            }),
            10.heightBox,
            Padding(
              padding: const EdgeInsets.only(left: 70.0,right: 70.0,),
              child: IntrinsicHeight(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.grey),
                        height: 1,
                        // margin: CustomPaddings.horizontal(),
                      ),
                    ),
                    8.widthBox,

                    Text(
                      "or",
                      style: Theme.of(context)
                          .textTheme
                          .subtitle1!
                          .copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.normal),
                    ),
                    8.widthBox,
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.grey),
                        height: 1,
                        // margin: CustomPaddings.horizontal(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            20.heightBox,
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:
                List.generate(3, (index) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    radius: 20,
                    backgroundColor: lightGrey,
                    child: Image.asset(socialIconList[index],width: 30,),
                  ),
                ),
                ),

              ),
            ),
            20.heightBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                "Don't have an account ? ".text.white.make(),
                "Sign Up".text.white.bold.make().onTap(() {
                  Get.to(()=>SignUpScreen());
                }),
              ],
            ),


          ],
        ),
      ),
    );

  }
}
