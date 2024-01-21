import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:street_food_recipe/Extension/Padding_Extension.dart';
import 'package:street_food_recipe/Helpers/constant.dart';
import 'package:street_food_recipe/MyCustomWidget/CustomWidget.dart';

class NotificationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: Border(
          bottom: BorderSide(
            color: MyFoodAppColor.forgetColor,
          ),
        ),
        leading: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: Icon(
            Icons.arrow_back_ios_new,
            size: 16.sp,
          ),
        ),
        title: MyText(
          text: 'Notification',
          fontSize: 16.sp,
          fontWeightText: FontWeight.w600,
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: ListView.builder(
          itemCount: 6,
          itemBuilder: (context, index) {
            return Container(
              height: 65.sp,
              child: Card(
                child: ListTile(
                  leading: CircleAvatar(
                    child: Image.asset('assets/images/Notification.png'),
                  ),
                  title: MyText(
                    text: 'Chiken Wings Recipe',
                    fontSize: 13.sp,
                    fontWeightText: FontWeight.w600,
                    textColor: MyFoodAppColor.yellowColor,
                  ),
                  subtitle: RichText(
                    text: TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                          text: 'uploaded by ',
                          style: TextStyle(
                              color: MyFoodAppColor.greyColor, fontSize: 12.sp),
                        ),
                        TextSpan(
                            text: 'James Jone',
                            style: TextStyle(
                                color: MyFoodAppColor.blackColor,
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w600)),
                      ],
                    ),
                  ),
                  trailing: Image.asset('assets/images/threeDots.png'),
                ),
              ),
            ).onlyPadding(left: 10.sp, right: 10.sp, top: 10.sp);
          },
        ).onlyPadding(top: 10.sp),
      ),
    );
  }
}
