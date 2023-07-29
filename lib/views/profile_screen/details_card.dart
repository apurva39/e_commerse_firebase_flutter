import 'package:e_commerse_firebase_flutter/constants/consts.dart';
import 'package:flutter/cupertino.dart';

Widget detailsCard({String? count,String? title })
{
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      count!.text.fontFamily(bold).color(darkFontGrey).size(16).make(),
      5.heightBox,
    title!.text.color(darkFontGrey).make(),
    ]
  ).box.rounded.size(120, 70).white.shadow3xl.make();
}

