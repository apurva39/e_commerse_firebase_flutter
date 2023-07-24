
import 'package:flutter/cupertino.dart';
import 'package:velocity_x/velocity_x.dart';

import '../constants/images.dart';

Widget BackGroundWidget({Widget? child})
{

  return Container(
    decoration: const BoxDecoration(
      image: DecorationImage(
          image: AssetImage("assets/images/b1.jpeg"),fit:BoxFit.fill,filterQuality: FilterQuality.high

      )
    ),
    child: child,
  );
}

