import 'package:e_commerse_firebase_flutter/constants/consts.dart';
import 'package:e_commerse_firebase_flutter/views/profile_screen/details_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../constants/lists.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              //edit profile button
              Align(
                alignment: Alignment.topRight,
                child: Icon(Icons.edit,color: Colors.grey,),
              ),
              
              
              
              //user details section
              Row(
                children: [
                  Image.asset(imgProfile2,width: 90,fit: BoxFit.cover,).box.roundedFull.clip(Clip.antiAlias).make(),
                  7.widthBox,
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        "Apurva Anand".text.fontFamily(bold).color(darkFontGrey).size(14).make(),
                        "apurvaanand101@gmail.com".text.fontFamily(semibold).color(darkFontGrey).size(10).make(),

        ],
                    ),
                  ),
                  OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        side: BorderSide(
                          color: Colors.red
                        )
                      ),
                      onPressed: (){},
                      child: "Log Out".text.fontFamily(semibold).color(darkFontGrey).size(13).make(),

        ),
                ],
              ),

              50.heightBox,

              //card details
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  detailsCard(
                    title: "in your cart",
                    count: "00"
                  ),
                  detailsCard(
                      title: "in your wishlist",
                      count: "30"
                  ),
                  detailsCard(
                      title: "your orders",
                      count: "132"
                  ),
                ],
              ),

              40.heightBox,

              //lists

              ListView.separated(
                shrinkWrap: true,


                  itemBuilder: (context,index)
                  {
                    return ListTile(
                        leading: Image.asset(
                          profileButttonIcon[index],
                          width: 22,

                        ),
                      title: profileButtonList[index].text.color(darkFontGrey).fontFamily(semibold).make(),
                    );
                  },
                  separatorBuilder: (context,index)
                  {
                    return Divider(
                      color: Colors.blueGrey,

                    );
                  },
                  itemCount: profileButttonIcon.length

              ).box.white.shadow4xl.padding(EdgeInsets.all(14)).rounded.make(),


            ],
          ),
        ),
      ),
    );
  }
}
