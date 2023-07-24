
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../constants/images.dart';
import '../constants/styles.dart';
import '../controller/home_controller.dart';
import '../views/cart_screen/cart_screen.dart';
import '../views/category_screen/category_screen.dart';
import '../views/home_screen/home_screen.dart';
import '../views/profile_screen/profile_screen.dart';



class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {

    //calling homecontroller
    var controller=Get.put(HomeController());
    var navbarItem=[
      BottomNavigationBarItem(icon: Image.asset(icHome,width: 26,),label: "Home"),
      BottomNavigationBarItem(icon: Image.asset(icCategories,width: 26,),label: "Categories"),

      BottomNavigationBarItem(icon: Image.asset(icCart,width: 26,),label: "cart"),

      BottomNavigationBarItem(icon: Image.asset(icProfile,width: 26,),label: "Account"),

    ];

    var navBody=[
      HomeScreen(),
      CategoryScreen(),
      CartScreen(),
      ProfileScreen()
    ];

    return Scaffold(
      body: Column(
        children: [
          Obx(()=>Expanded(child: navBody.elementAt(controller.currentNavIndex.value))),
        ],
      ),
      bottomNavigationBar: Obx(
            ()=> BottomNavigationBar(
          currentIndex: controller.currentNavIndex.value,
          // selectedFontSize: 20,
          backgroundColor: Colors.black45,
          selectedItemColor: Colors.red,
          type: BottomNavigationBarType.fixed,
          selectedLabelStyle: TextStyle(
            color: Colors.greenAccent,fontFamily: bold,
          ),
          onTap: (value)
          {
            controller.currentNavIndex.value=value;
          },
          items: navbarItem,

        ),
      ),
    );
  }
}
