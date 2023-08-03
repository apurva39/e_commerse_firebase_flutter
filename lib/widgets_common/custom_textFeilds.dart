// import 'dart:js';

import 'package:e_commerse_firebase_flutter/constants/consts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// Widget CustomTextFeilds({String? title,String? nameHint,controller}) {
//   return Padding(
//     padding: EdgeInsets.all(20),
//     child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
//
//       10.heightBox,
//       Container(
//
//         child: const TextField(
//
//           decoration: InputDecoration(
//             border: OutlineInputBorder(),
//             // labelText: title,
//             hintStyle: TextStyle(
//               fontFamily: semibold,
//               color: Colors.white,
//             ),
//             // hintText: nameHint,
//             isDense: true,
//             fillColor: Colors.white,
//             filled: true,
//             // focusedBorder: OutlineInputBorder(
//             //     borderSide: BorderSide(color: Colors.black12)),
//           ),
//         ),
//       ),
//       30.heightBox,
//       // Container(
//       //   child: const TextField(
//       //     decoration: InputDecoration(
//       //       border: OutlineInputBorder(
//       //
//       //       ),
//       //       labelText: 'Password',
//       //       hintStyle: TextStyle(
//       //         fontFamily: semibold,
//       //         color: Colors.white,
//       //       ),
//       //       hintText: 'Enter your email',
//       //       isDense: true,
//       //       fillColor: Colors.white,
//       //       filled: true,
//       //       // focusedBorder: OutlineInputBorder(
//       //       //     borderSide: BorderSide(color: Colors.black12)),
//       //     ),
//       //   ),
//       // ),
//     ]),
//   );
// }




Widget customTextFeild({String? title, String? hint, controller,isPass})
{
  return Column(
crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      title! .text.color(Colors.white).fontFamily(semibold).size(16).make(),
      5.heightBox,
      TextFormField(
        obscureText: isPass,
        controller: controller,
        decoration: InputDecoration(
          hintStyle: const TextStyle(
            fontFamily: semibold,
            color: textfieldGrey,
          ),// TextStyle
          hintText: hint,
          isDense: true,
          fillColor: lightGrey,
          filled: true,

       border: OutlineInputBorder(
         borderRadius: BorderRadius.all(Radius.circular(10))
      ),
          focusedBorder:const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide:BorderSide (color: Colors.green,
            width: 3),

      ),
      )
      ),
    ],
  );
}