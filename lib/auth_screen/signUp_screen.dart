
import 'dart:html';

import 'package:e_commerse_firebase_flutter/constants/consts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


import '../constants/socialIcons.dart';

import '../controller/auth_controller.dart';


import '../widgets_common/applogo.dart';
import '../widgets_common/custom_textFeilds.dart';
import '../widgets_common/our_button.dart';
import 'home.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  var controller=Get.put(AuthController());

  var nameController=TextEditingController();
  var emailController=TextEditingController();
  var passwordController=TextEditingController();
  var confirmpasswordController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundColor,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Obx(
                ()=>Column(
                children: [
                  (context.screenHeight*0.1).heightBox,
                  appLogoWidget(),
                  10.heightBox,
                  "Sign Up".text.white.fontWeight(FontWeight.w700).size(30).make(),
                  14.heightBox,
                  customTextFeild(controller: nameController,title: "Name",hint: "enter your name",isPass: false),
                  8.heightBox,
                  customTextFeild(controller: emailController,title: "Email",hint: "enter your email",isPass: false),
                  8.heightBox,
                  customTextFeild(controller: passwordController,title: "Password",hint: "enter your password",isPass: true),
                  8.heightBox,
                  customTextFeild(controller: confirmpasswordController,title: "ReType Password",hint: "confirm your password",isPass: true),

                  17.heightBox,
                  controller.isLoading.value ? CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation(Colors.red),
                  ):
                  VxBox(child: Text("Sign Up").centered())

                      .height(30)
                      .width(100)
                       .roundedSM
                      .blue300
                      .make()
                      .centered().onTap(() async{
                        controller.isLoading(true);
                    try{
                      await controller.signupMethod(
                        context: context,
                        email: emailController.text,
                        password: passwordController.text,

                      ).then((value) {
                        return controller.storeUserData(
                          email: emailController.text,
                          password: passwordController.text,
                          name: nameController.text
                        );
                      }

                      ).then((value){
                        VxToast.show(
                          context,
                          msg: "Account Created Sucessfully"
                        );
                        Get.offAll(()=>Home());
                      });
                    }
                    catch(e)
                    {
                        auth.signOut();
                        controller.isLoading(false);
                    }
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
          ),
        ),
      ),
    );
  }
}
