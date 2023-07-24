import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants/styles.dart';

Widget OurButton({onPress,title1,color,textColor})
{
  return Container(
    height: 30,
    width: 100,
    child: ElevatedButton(

      style: ElevatedButton.styleFrom(
        primary: color,
        padding: EdgeInsets.all(12),
      ),
        onPressed:()
        {
            onPress;
        },
      child: Text(title1,style: TextStyle(color: textColor,fontFamily: bold),),
        // child: title1.text.color(textColor).fontFamily(bold).make(),
    ),
  );
}