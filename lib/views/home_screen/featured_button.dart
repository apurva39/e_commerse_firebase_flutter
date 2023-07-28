
import 'package:e_commerse_firebase_flutter/constants/consts.dart';
import 'package:flutter/cupertino.dart';

import '../../constants/images.dart';

Widget featuredButton({String? title,icon})
{
  return Row(

    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Image.asset(icon,fit: BoxFit.fill,width: 60,),
      10.widthBox,
      title!.text.size(15).fontFamily(semibold).color(darkFontGrey).make(),
    ],
  ).box.white.width(200).height(60).padding(EdgeInsets.all(7)).margin(EdgeInsets.symmetric(horizontal: 4)).roundedSM.outerShadow.make();
}