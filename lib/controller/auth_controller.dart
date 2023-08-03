

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_getx_widget.dart';
import 'package:velocity_x/velocity_x.dart';

import '../constants/firebase_auth.dart';
class AuthController extends GetxController{

  var isLoading=false.obs;
  var emailController=TextEditingController();
  var passwordController=TextEditingController();
  Future<UserCredential?> signinMethod({context}) async
  {
    UserCredential? userCredential;

    try{
      userCredential=await auth.createUserWithEmailAndPassword(email: emailController.text, password: passwordController.text);

    } on FirebaseAuthException catch(e)
    {
      VxToast.show(context, msg: e.toString());
    }
    return userCredential;
  }

  Future<UserCredential?> signupMethod({email,password,context}) async
  {
    UserCredential? userCredential;

    try{
      userCredential=await auth.createUserWithEmailAndPassword(email: email, password: password);

    } on FirebaseAuthException catch(e)
    {
      VxToast.show(context, msg: e.toString());
    }
    return userCredential;
  }

//stroing data method

  storeUserData({name,password,email}) async
  {
    DocumentReference store=firestore.collection(usersCollection).doc(currentUser!.uid);
    store.set(
        {'name': name, 'password': password, 'email': email, 'imageUrl': '','id':currentUser!.uid});
  }

  signoutMethod(context) async
  {
    try{
      await auth.signOut();
    }
    catch(e)
    {
      VxToast.show(context, msg: e.toString());
    }
  }
}
