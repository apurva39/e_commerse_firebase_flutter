// import 'dart:js';

import 'package:e_commerse_firebase_flutter/constants/consts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget CustomTextFeilds() {
  return Padding(
    padding: EdgeInsets.all(20),
    child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [

      10.heightBox,
      Container(

        child: const TextField(

          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Email',
            hintStyle: TextStyle(
              fontFamily: semibold,
              color: Colors.white,
            ),
            hintText: 'Enter your email',
            isDense: true,
            fillColor: Colors.white,
            filled: true,
            // focusedBorder: OutlineInputBorder(
            //     borderSide: BorderSide(color: Colors.black12)),
          ),
        ),
      ),
      30.heightBox,
      Container(
        child: const TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(

            ),
            labelText: 'Password',
            hintStyle: TextStyle(
              fontFamily: semibold,
              color: Colors.white,
            ),
            hintText: 'Enter your email',
            isDense: true,
            fillColor: Colors.white,
            filled: true,
            // focusedBorder: OutlineInputBorder(
            //     borderSide: BorderSide(color: Colors.black12)),
          ),
        ),
      ),
    ]),
  );
}
