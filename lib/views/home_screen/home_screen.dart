
import 'package:e_commerse_firebase_flutter/constants/consts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constants/lists.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      color: backGroundColor,
      width: context.screenWidth,
      height: context.screenHeight,

      child: SafeArea(
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              //  : 50,
              // color: Colors.red,
              child: TextFormField(

                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      // borderSide:
                      // BorderSide(width: 3, color: Colors.greenAccent,),                      // borderRadius: BorderRadius.circular(50.0),
                    ),
                  suffixIcon: Icon(Icons.search),
                  filled: true,
                  fillColor: Colors.white,
                  hintText: "Search Anything...",
                  hintStyle: TextStyle(
                    color: Colors.grey,
                  )


                ),
              ),

            ),
            10.heightBox,
            VxSwiper.builder(
              autoPlay: true,
              enlargeCenterPage: true,
              aspectRatio: 16/9,
              height: 200,
            itemCount: slidersList.length, 
            itemBuilder: (BuildContext context, int index) { 
            return Container(
              child: Image.asset(slidersList[index],fit: BoxFit.fill,),
            );
          },

         ).box.rounded.clip(Clip.antiAlias).make(),
          ],
        ),
      ),


    );
  }
}
