import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:street_food_recipe/Extension/Padding_Extension.dart';
import 'package:street_food_recipe/Helpers/constant.dart';
import 'package:street_food_recipe/MyCustomWidget/CustomWidget.dart';

class SearchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: Border(
          bottom: BorderSide(color: MyFoodAppColor.greyColor),
        ),
        leading: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: Icon(Icons.arrow_back_ios),
        ),
        centerTitle: true,
        title: MyText(
          text: 'Search',
          fontSize: 15.sp,
          fontWeightText: FontWeight.w500,
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            MyTextField(
              borderSideColor: Colors.transparent,
              borderRadiusField: BorderRadius.circular(10.sp),
              offset: Offset(0, 20),
              prefixIcon: Icons.search_rounded,
              hintText: 'Search Recipe here',
              hintTextColor: MyFoodAppColor.greyColor,
              hintFontSize: 14.sp,
              widthTextField: 260.sp,
            ).onlyPadding(left: 5.sp, top: 15.sp),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                MyText(
                  fontSize: 14.sp,
                  text: 'Chiken Wings Recipe',
                  textColor: MyFoodAppColor.forgeTextColor,
                  fontWeightText: FontWeight.w600,
                ),
                Image.asset(
                  'assets/images/icon.png',
                  scale: 1.sp,
                )
              ],
            ).onlyPadding(top: 30.sp),
            Divider(
              color: MyFoodAppColor.forgeTextColor,
              endIndent: 30.sp,
              indent: 30.sp,
            ).onlyPadding(top: 5.sp),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                MyText(
                  fontSize: 14.sp,
                  text: 'Chiken Wings Recipe',
                  textColor: MyFoodAppColor.forgeTextColor,
                  fontWeightText: FontWeight.w600,
                ),
                Image.asset(
                  'assets/images/icon.png',
                  scale: 1.sp,
                )
              ],
            ).onlyPadding(top: 20.sp),
            Divider(
              color: MyFoodAppColor.forgeTextColor,
              endIndent: 30.sp,
              indent: 30.sp,
            ).onlyPadding(top: 4.sp),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                MyText(
                  fontSize: 14.sp,
                  text: 'Chiken Wings Recipe',
                  textColor: MyFoodAppColor.forgeTextColor,
                  fontWeightText: FontWeight.w600,
                ),
                Image.asset(
                  'assets/images/icon.png',
                  scale: 1.sp,
                )
              ],
            ).onlyPadding(top: 20.sp),
            Divider(
              color: MyFoodAppColor.forgeTextColor,
              endIndent: 30.sp,
              indent: 30.sp,
            ).onlyPadding(top: 6.sp),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                MyText(
                  fontSize: 14.sp,
                  text: 'Chiken Wings Recipe',
                  textColor: MyFoodAppColor.forgeTextColor,
                  fontWeightText: FontWeight.w600,
                ),
                Image.asset(
                  'assets/images/icon.png',
                  scale: 1.sp,
                )
              ],
            ).onlyPadding(top: 20.sp),
            Divider(
              color: MyFoodAppColor.forgeTextColor,
              endIndent: 30.sp,
              indent: 30.sp,
            ).onlyPadding(top: 6.sp),
          ],
        ),
      ),
    );
  }
}
