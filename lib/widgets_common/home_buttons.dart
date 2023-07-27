import 'package:e_commerse_firebase_flutter/constants/consts.dart';
import 'package:flutter/cupertino.dart';

import '../constants/colors.dart';
import '../constants/colors.dart';

Widget homeButton({height,width,icon,String? title,onPress})
{
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Image.asset(icon,width: 26,),
      7.heightBox,
      title!.text.size(16).color(darkFontGrey).fontFamily(semibold).make(),
    ],
  ).box.rounded.white.size(width,height).make();

}