import 'package:e_commerse_firebase_flutter/constants/consts.dart';
import 'package:e_commerse_firebase_flutter/constants/lists.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../constants/colors.dart';
import '../../constants/colors.dart';
import '../../constants/colors.dart';
import '../../constants/colors.dart';
import 'category_details.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black45,
       title: "Category".text.color(Colors.white).bold.make(),
      ),
      body:Container(
        padding: EdgeInsets.all(12),
        child: GridView.builder(

            physics: ScrollPhysics(),
            // scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemCount: 9,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,mainAxisSpacing: 8,crossAxisSpacing: 8,mainAxisExtent: 190

            ),

            itemBuilder: (context,index) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(categoryImages[index],width: 200,height:120,fit: BoxFit.cover,
                  ),
                  10.heightBox,
                  categoriesList[index].text.size(14).color(darkFontGrey).align(TextAlign.center).make(),
                ],

              ).box.white.shadow4xl.roundedSM.margin(EdgeInsets.symmetric(horizontal: 3)).padding(EdgeInsets.all(5)).make().onTap(() {
                Get.to(()=>CategoryDetails(title: categoriesList[index],));
              });
            }
        ),
      ) ,
    );
  }
}
