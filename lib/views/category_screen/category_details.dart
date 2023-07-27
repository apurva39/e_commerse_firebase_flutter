import 'package:e_commerse_firebase_flutter/constants/consts.dart';
import 'package:e_commerse_firebase_flutter/views/category_screen/item_details.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class CategoryDetails extends StatelessWidget {
  String title;
   CategoryDetails({super.key,required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: title.text.fontFamily(bold).white.make(),
      ),
      body: Container(
        padding: EdgeInsets.all(12),
        child: Column(
          
          children: [
            SingleChildScrollView(
              physics: PageScrollPhysics(),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                    6,
                    (index)=> "Baby Clothig".text.size(14).fontFamily(semibold).make().centered().box.rounded.color(Colors.grey).margin(EdgeInsets.symmetric(horizontal: 4)).size(120,60).make()
                        // (index) => .box.white.margin(EdgeInsets.symmetric(horizontal: 4)).rounded.size(120, 60).make()),
              ),
            ),
            ),
            20.heightBox,
            Expanded(child:
            GridView.builder(
                physics: ScrollPhysics(),
                // scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: 8,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,mainAxisSpacing: 8,crossAxisSpacing: 8,mainAxisExtent: 280

                ),

                itemBuilder: (context,index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(imgP1,width: 200,height:200,fit: BoxFit.cover,
                      ),
                      Spacer(),
                      "MSI Laptop 8GB/512gb".text.fontFamily(semibold).size(10).color(Colors.black45).make(),
                      10.heightBox,
                      "\$1000".text.size(16).color(Colors.red).fontFamily(bold).make(),
                    ],

                  ).box.white.roundedSM.margin(EdgeInsets.symmetric(horizontal: 3)).shadowSm.padding(EdgeInsets.all(8)).make().onTap(() {
                    Get.to(()=>ItemDetails(title: "Dummy Details"));
                  });
                }
            )
            ),

          ],
        ),
      ),
    );
  }
}
