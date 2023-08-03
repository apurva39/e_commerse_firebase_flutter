
import 'package:e_commerse_firebase_flutter/auth_screen/signUp_screen.dart';
import 'package:e_commerse_firebase_flutter/constants/consts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../constants/colors.dart';
import '../constants/lists.dart';
import '../controller/auth_controller.dart';
import '../widgets_common/applogo.dart';
import '../widgets_common/custom_textFeilds.dart';
import '../widgets_common/our_button.dart';
import 'home.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var controller=Get.put(AuthController());

  var passwordController=TextEditingController();
  var emailController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: backGroundColor,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Center(

          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Obx(
                ()=>Column(
                children: [
                  (context.screenHeight*0.1).heightBox,
                  appLogoWidget(),
                  10.heightBox,
                  "Log In".text.white.fontWeight(FontWeight.w700).size(30).make(),


                  customTextFeild(title: "Email",hint: "enter your email",controller: controller.emailController,isPass: false),
                  10.heightBox,
                  customTextFeild(title: "password",hint: "enter your password",controller: controller.passwordController,isPass: true),
                  17.heightBox,
                  controller.isLoading.value ? CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation(Colors.red),
                  ): VxBox(child: Text("Sign In").centered())

                      .height(30)
                      .width(100)
                      .roundedSM
                      .blue300
                      .make()
                      .centered().onTap(() async {
                        controller.isLoading(true);
                    try{
                      await controller.signinMethod(
                        context: context,
                         ).then((value) {
                           if(value !=null)
                             {
                               VxToast.show(context, msg: "Login Sucessfully");
                               Get.offAll(()=>Home());

                             }
                           else
                             {
                               controller.isLoading(false);
                             }

                      }

                      ).then((value){
                        VxToast.show(
                            context,
                            msg: "Login Sucessfully"
                        );
                        Get.offAll(()=>Home());
                      });
                    }
                    catch(e)
                    {
                      auth.signOut();
                    }
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
          ),
        ),
      ),
    );

  }
}
