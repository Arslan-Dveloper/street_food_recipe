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
        title: MyText(
          text: 'Notification',
          fontSize: 14.sp,
          fontWeightText: FontWeight.w500,
        ),
        centerTitle: true,
        leading: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: Icon(Icons.arrow_back_ios),
        ),
        shape: Border(bottom: BorderSide(color: MyFoodAppColor.greyColor)),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Card(
              child: ListTile(
                leading: CircleAvatar(
                  child: Image.asset('assets/images/Notification.png'),
                ),
                title: MyText(
                  text: 'Chiken Wings Recipe',
                  textColor: MyFoodAppColor.yellowColor,
                  fontSize: 12.sp,
                  fontWeightText: FontWeight.w600,
                ),
                subtitle: Row(
                  children: [
                    MyText(
                      text: 'uploaded by ',
                      textColor: MyFoodAppColor.greyColor,
                      fontSize: 11.sp,
                    ),
                    MyText(
                      text: 'James Jone',
                      textColor: MyFoodAppColor.blackColor,
                      fontSize: 12.sp,
                      fontWeightText: FontWeight.w500,
                    ),
                  ],
                ),
              ),
            ).symmetricPadding(horizontal: 5.sp, vertical: 3.sp),
            Card(
              child: ListTile(
                leading: CircleAvatar(
                  child: Image.asset('assets/images/Notification.png'),
                ),
                title: MyText(
                  text: 'Chiken Wings Recipe',
                  textColor: MyFoodAppColor.yellowColor,
                  fontSize: 12.sp,
                  fontWeightText: FontWeight.w600,
                ),
                subtitle: Row(
                  children: [
                    MyText(
                      text: 'uploaded by ',
                      textColor: MyFoodAppColor.greyColor,
                      fontSize: 11.sp,
                    ),
                    MyText(
                      text: 'James Jone',
                      textColor: MyFoodAppColor.blackColor,
                      fontSize: 12.sp,
                      fontWeightText: FontWeight.w500,
                    ),
                  ],
                ),
              ),
            ).symmetricPadding(horizontal: 5.sp, vertical: 3.sp),
            Card(
              child: ListTile(
                leading: CircleAvatar(
                  child: Image.asset('assets/images/Notification.png'),
                ),
                title: MyText(
                  text: 'Chiken Wings Recipe',
                  textColor: MyFoodAppColor.yellowColor,
                  fontSize: 12.sp,
                  fontWeightText: FontWeight.w600,
                ),
                subtitle: Row(
                  children: [
                    MyText(
                      text: 'uploaded by ',
                      textColor: MyFoodAppColor.greyColor,
                      fontSize: 11.sp,
                    ),
                    MyText(
                      text: 'James Jone',
                      textColor: MyFoodAppColor.blackColor,
                      fontSize: 12.sp,
                      fontWeightText: FontWeight.w500,
                    ),
                  ],
                ),
              ),
            ).symmetricPadding(horizontal: 5.sp, vertical: 3.sp),
            Card(
              child: ListTile(
                leading: CircleAvatar(
                  child: Image.asset('assets/images/Notification.png'),
                ),
                title: MyText(
                  text: 'Chiken Wings Recipe',
                  textColor: MyFoodAppColor.yellowColor,
                  fontSize: 12.sp,
                  fontWeightText: FontWeight.w600,
                ),
                subtitle: Row(
                  children: [
                    MyText(
                      text: 'uploaded by ',
                      textColor: MyFoodAppColor.greyColor,
                      fontSize: 11.sp,
                    ),
                    MyText(
                      text: 'James Jone',
                      textColor: MyFoodAppColor.blackColor,
                      fontSize: 12.sp,
                      fontWeightText: FontWeight.w500,
                    ),
                  ],
                ),
              ),
            ).symmetricPadding(horizontal: 5.sp, vertical: 3.sp),
            Card(
              child: ListTile(
                leading: CircleAvatar(
                  child: Image.asset('assets/images/Notification.png'),
                ),
                title: MyText(
                  text: 'Chiken Wings Recipe',
                  textColor: MyFoodAppColor.yellowColor,
                  fontSize: 12.sp,
                  fontWeightText: FontWeight.w600,
                ),
                subtitle: Row(
                  children: [
                    MyText(
                      text: 'uploaded by ',
                      textColor: MyFoodAppColor.greyColor,
                      fontSize: 11.sp,
                    ),
                    MyText(
                      text: 'James Jone',
                      textColor: MyFoodAppColor.blackColor,
                      fontSize: 12.sp,
                      fontWeightText: FontWeight.w500,
                    ),
                  ],
                ),
              ),
            ).symmetricPadding(horizontal: 5.sp, vertical: 3.sp),
            Card(
              child: ListTile(
                leading: CircleAvatar(
                  child: Image.asset('assets/images/Notification.png'),
                ),
                title: MyText(
                  text: 'Chiken Wings Recipe',
                  textColor: MyFoodAppColor.yellowColor,
                  fontSize: 12.sp,
                  fontWeightText: FontWeight.w600,
                ),
                subtitle: Row(
                  children: [
                    MyText(
                      text: 'uploaded by ',
                      textColor: MyFoodAppColor.greyColor,
                      fontSize: 11.sp,
                    ),
                    MyText(
                      text: 'James Jone',
                      textColor: MyFoodAppColor.blackColor,
                      fontSize: 12.sp,
                      fontWeightText: FontWeight.w500,
                    ),
                  ],
                ),
              ),
            ).symmetricPadding(horizontal: 5.sp, vertical: 3.sp)
          ],
        ),
      ),
    );
  }
}
