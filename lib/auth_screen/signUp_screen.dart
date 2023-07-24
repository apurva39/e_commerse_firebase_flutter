
import 'package:e_commerse_firebase_flutter/constants/consts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../constants/colors.dart';
import '../constants/socialIcons.dart';
import '../constants/styles.dart';
import '../widgets_common/applogo.dart';
import '../widgets_common/custom_textFeilds.dart';
import '../widgets_common/our_button.dart';
import 'home.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

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
            "Sign Up".text.white.fontWeight(FontWeight.w700).size(30).make(),
            10.heightBox,
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                child: const TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(

                    ),
                    labelText: 'Name',
                    hintStyle: TextStyle(
                      fontFamily: semibold,
                      color: Colors.white,
                    ),
                    hintText: 'Name',
                    isDense: true,
                    fillColor: Colors.white,
                    filled: true,
                    // focusedBorder: OutlineInputBorder(
                    //     borderSide: BorderSide(color: Colors.black12)),
                  ),
                ),
              ),
            ),
            CustomTextFeilds(),
            10.heightBox,
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                child: const TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(

                    ),
                    labelText: 'ReEnter Password',
                    hintStyle: TextStyle(
                      fontFamily: semibold,
                      color: Colors.white,
                    ),
                    hintText: 'Re Enter Password',
                    isDense: true,
                    fillColor: Colors.white,
                    filled: true,
                    // focusedBorder: OutlineInputBorder(
                    //     borderSide: BorderSide(color: Colors.black12)),
                  ),
                ),
              ),
            ),
            17.heightBox,
            VxBox(child: Text("Sign Up").centered())

                .height(30)
                .width(100)
                .blue300
                .make()
                .centered().onTap(() {
              Get.to(()=>Home());
            }),

            // OurButton(title1:"Sign Up",textColor: Colors.white,onPress: (){
            //   Get.to(()=>Home());
            // }),
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                "Already have an account ? ".text.white.make(),
                "Sign In".text.white.bold.make().onTap(() {
                  Get.back();
                }),
              ],
            ),

          ],
        ),
      ),
    );
  }
}
