
import 'package:e_commerse_firebase_flutter/constants/consts.dart';
import 'package:e_commerse_firebase_flutter/views/home_screen/featured_button.dart';
import 'package:e_commerse_firebase_flutter/widgets_common/home_buttons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constants/lists.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
        padding: EdgeInsets.all(12),
        color: backGroundColor,
        width: context.screenWidth,
        height: context.screenHeight,

        child: SafeArea(
          child: Column(
            children: [
              // Container(
              //   alignment: Alignment.center,
              //
              //   // color: Colors.red,
              //   child: TextFormField(
              //
              //     decoration: InputDecoration(
              //         enabledBorder: OutlineInputBorder(
              //           borderRadius: BorderRadius.circular(16),
              //           borderSide:
              //           BorderSide(width: 3, color: Colors.greenAccent,),                      // borderRadius: BorderRadius.circular(50.0),
              //         ),
              //       suffixIcon: Icon(Icons.search),
              //       filled: true,
              //       fillColor: Colors.white,
              //       hintText: "Search Anything...",
              //       hintStyle: TextStyle(
              //         color: Colors.grey,
              //       )
              //
              //
              //     ),
              //   ),
              //
              // ),

            10.heightBox,
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      VxSwiper.builder(
                        // aspectRatio: 16/9,
                        autoPlay: true,
                        enlargeCenterPage: true,

                        height: 150,
                        itemCount: slidersList.length,
                        itemBuilder: (BuildContext context, int index) {
                          return  Image.asset(slidersList[index],fit: BoxFit.fill,);
                        },

                      ).box.rounded.clip(Clip.antiAlias).margin(EdgeInsets.symmetric(horizontal: 8)).make(),
                      12.heightBox,

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: List.generate(2,
                                (index) => homeButton(
                              height: context.screenHeight * 0.15,
                              width: context.screenWidth/2.5,
                              title: index==0?"Today's Deal" :"Flash Sale",
                              icon: index==0 ? icTodaysDeal : icFlashDeal,
                            )),


                      ),


                      20.heightBox,


                      //2nd slider
                      VxSwiper.builder(
                        aspectRatio: 16/9,
                        autoPlay: true,
                        enlargeCenterPage: true,

                        height: 150,
                        itemCount: secondslidersList.length,
                        itemBuilder: (BuildContext context, int index) {
                          return  Image.asset(secondslidersList[index],fit: BoxFit.fill,);
                        },

                      ).box.rounded.clip(Clip.antiAlias).margin(EdgeInsets.symmetric(horizontal: 10)).make(),

                      10.heightBox,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          homeButton(
                            height: 100.00,
                            width: 100.00,
                            title: "Top Category",
                            icon: icTopCategories ,
                          ),
                          homeButton(
                            height: 100.00,
                            width: 100.00,
                            title: "Brands",
                            icon: icBrands ,
                          ),
                          homeButton(
                            height: 100.00,
                            width: 100.00,
                            title: "Top Sellers",
                            icon: icTopSeller ,
                          ),
                        ],
                      ),
                      20.heightBox,
                      Align(
                        alignment: Alignment.centerLeft,
                        child: "Featured Category".text.white.size(12).semiBold.make(),
                      ),

                      10.heightBox,

                      //Featured Category

                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            featuredButton(

                                icon: imgS1,

                                title: "womenDress"),
                            10.heightBox,
                            featuredButton(

                                icon: imgS2,

                                title: "girlsDress"),
                            10.heightBox,
                            featuredButton(

                                icon: imgS3,

                                title: "girlsWatches"),
                          ],
                        ),
                      ),
                      10.heightBox,


                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            featuredButton(

                                icon: imgS3,

                                title: "Men"),
                            10.heightBox,
                            featuredButton(

                                icon: imgS1,

                                title: "T-shirts"),
                            10.heightBox,
                            featuredButton(

                                icon: imgS1,

                                title: "Watches"),
                          ],
                        ),
                      ),
                      20.heightBox,

                      //Featured products
                      Container(
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(color: Colors.red),
                        width: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            "Featured Products".text.white.size(16).semiBold.make(),
                            18.heightBox,
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: List.generate(8, (index) => Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.asset(imgP1,width: 150,fit: BoxFit.fill,
                                    ),
                                    8.heightBox,
                                    "MSI Laptop 8GB/512gb".text.fontFamily(semibold).size(10).color(Colors.black45).make(),
                                    10.heightBox,
                                    "\$1000".text.size(16).color(Colors.red).fontFamily(bold).make(),
                                  ],

                                ).box.white.roundedSM.margin(EdgeInsets.symmetric(horizontal: 5)).padding(EdgeInsets.all(8)).make(),
                                ),
                              ),
                            ),
                          ],

                        ),
                      ),
                      10.heightBox,
                      //3rd swipper

                      VxSwiper.builder(
                        aspectRatio: 16/9,
                        autoPlay: true,
                        enlargeCenterPage: true,

                        height: 150,
                        itemCount: secondslidersList.length,
                        itemBuilder: (BuildContext context, int index) {
                          return  Image.asset(secondslidersList[index],fit: BoxFit.fill,);
                        },

                      ).box.rounded.clip(Clip.antiAlias).margin(EdgeInsets.symmetric(horizontal: 10)).make(),
                      14.heightBox,



                      //all products
                      GridView.builder(
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                          itemCount: 6,
                          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,mainAxisSpacing: 6,crossAxisSpacing: 7

                      ),

                          itemBuilder: (context,index) {
                            return Container(
                              color: Colors.red,
                            );
                          }
                      )
                      
                      




                    ],
                  ),
                ),
              ),


            ]
          )
        )


    );
  }
}
