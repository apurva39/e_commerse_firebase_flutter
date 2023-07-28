import 'package:e_commerse_firebase_flutter/constants/consts.dart';
import 'package:e_commerse_firebase_flutter/widgets_common/our_button.dart';
import 'package:flutter/material.dart';

import '../../constants/lists.dart';

class ItemDetails extends StatelessWidget {
  String title;
  ItemDetails({super.key,required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: title.text.bold.make(),
        actions: [
          IconButton(
              onPressed: ()
              {

              },
              icon: Icon(Icons.share)),
          IconButton(
              onPressed: ()
              {

              },
              icon: Icon(Icons.favorite))
        ],
      ),
      
     body: Column(
       children: [
         Expanded(
             child: Padding(
               padding: EdgeInsets.all(8),
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   VxSwiper.builder(
                     aspectRatio: 16/9,
                     autoPlay: true,
                     // enlargeCenterPage: true,

                     height: 350,

                     itemCount: 4,

                     itemBuilder: (BuildContext context, int index) {
                       return  Image.asset(imgFc5,width:double.infinity,fit: BoxFit.fill,);
                     },

                   ),
                   10.heightBox,
                   title.text.size(14).color(darkFontGrey).fontFamily(semibold).make(),
                   10.heightBox,
                   VxRating(
                       onRatingUpdate: (value){},
                     normalColor: textfieldGrey,
                     count: 5,
                     selectionColor: golden,
                     size: 25,
                     stepInt: true,
                   ),

                   10.heightBox,
                   "\$400".text.color(Colors.red).fontFamily(bold).size(18).make(),
                   15.heightBox,
                   "Descriptions".text.size(14).color(darkFontGrey).fontFamily(semibold).make(),
                    10.heightBox,
                   "Goods are physical, produced objects for which a demand exists, over which ownership rights can be established and whose ownership can be transferred from one institutional unit to another by engaging in transactions on markets.".text.color(Colors.grey).size(10).make(),
               Spacer(),
               SizedBox(
                     width: double.infinity,
                     height: 40,
                       child: OurButton(
                         title1: "Add to cart",
                         color: Colors.red,
                         textColor: whiteColor,onPress: (){}
                       )
                   )

                 ],
               ),
             )

         )
       ],
     ),


    );
  }
}
