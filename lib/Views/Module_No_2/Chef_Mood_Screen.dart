import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:street_food_recipe/Extension/Padding_Extension.dart';
import 'package:street_food_recipe/Helpers/constant.dart';
import 'package:street_food_recipe/MyCustomWidget/CustomWidget.dart';
import 'package:street_food_recipe/Views/Module_No_2/Convert_Chef_Mode.dart';

class ChefMoodScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyFoodAppColor.whiteColor,
      appBar: AppBar(
        title: MyText(
          text: 'Profile',
          fontSize: 16.sp,
          fontWeightText: FontWeight.w600,
        ),
        centerTitle: true,
        leading: Icon(
          Icons.arrow_back_ios,
          size: 20.sp,
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MyText(
                text: 'ABDUL HANNAN',
                fontSize: 16.sp,
                fontWeightText: FontWeight.w600,
              ).onlyPadding(left: 50.sp, top: 20.sp),
              MyText(
                text: 'abc@gmail.com',
                fontSize: 12.sp,
                textColor: MyFoodAppColor.forgeTextColor,
                fontWeightText: FontWeight.w500,
              ).onlyPadding(left: 60.sp),
              MyContainer(
                width: 100.sp,
                height: 100.sp,
                borderRadius: BorderRadius.circular(50.sp),
                border: Border.all(width: 2, color: MyFoodAppColor.yellowColor),
                containerWidget: Image.asset('assets/images/man AppBar.png'),
              ).onlyPadding(left: 60.sp, top: 20.sp),
              MyText(
                text: 'Name',
                fontSize: 13.sp,
                textColor: MyFoodAppColor.forgeTextColor,
              ).onlyPadding(left: 10.sp, top: 20.sp),
              MyTextField(
                hintText: 'ABDUL HANNAN',
                borderSideColor: MyFoodAppColor.textFieldBorderColor,
                blurRadius: 0,
                spreadRadius: 0,
                offset: Offset(0, 0),
                containerShadowColor: Colors.transparent,
                fillColor: MyFoodAppColor.textFieldFillColor,
                hintFontSize: 13.sp,
              ).onlyPadding(top: 3.sp),
              MyText(
                text: 'Email',
                fontSize: 13.sp,
                textColor: MyFoodAppColor.forgeTextColor,
              ).onlyPadding(left: 10.sp, top: 5.sp),
              MyTextField(
                hintText: 'abc@gmail.com',
                borderSideColor: MyFoodAppColor.textFieldBorderColor,
                blurRadius: 0,
                spreadRadius: 0,
                offset: Offset(0, 0),
                containerShadowColor: Colors.transparent,
                fillColor: MyFoodAppColor.textFieldFillColor,
                hintFontSize: 13.sp,
              ).onlyPadding(top: 3.sp),
              MyText(
                text: 'Specialization',
                fontSize: 13.sp,
                textColor: MyFoodAppColor.forgeTextColor,
              ).onlyPadding(top: 5.sp, left: 10.sp),
              MyTextField(
                hintText: 'Enter your Speacialization',
                hintTextColor: MyFoodAppColor.forgeTextColor,
                borderSideColor: MyFoodAppColor.textFieldBorderColor,
                blurRadius: 0,
                spreadRadius: 0,
                offset: Offset(0, 0),
                containerShadowColor: Colors.transparent,
                fillColor: MyFoodAppColor.textFieldFillColor,
                hintFontSize: 13.sp,
                icon: Icons.arrow_drop_down_outlined,
                iconColor: MyFoodAppColor.yellowColor,
                iconSize: 40.sp,
                onIconTap: (){

                },
              ).onlyPadding(top: 3.sp),
              MyText(
                text: 'Experience',
                fontSize: 13.sp,
                textColor: MyFoodAppColor.forgeTextColor,
              ).onlyPadding(left: 10.sp, top: 5.sp),
              MyTextField(
                hintText: '2 Years',
                hintTextColor: MyFoodAppColor.forgeTextColor,
                borderSideColor: MyFoodAppColor.textFieldBorderColor,
                blurRadius: 0,
                spreadRadius: 0,
                offset: Offset(0, 0),
                containerShadowColor: Colors.transparent,
                fillColor: MyFoodAppColor.textFieldFillColor,
                hintFontSize: 13.sp,
              ).onlyPadding(top: 3.sp),
              MyText(
                text: 'Recently Work ',
                fontSize: 12.sp,
                textColor: MyFoodAppColor.forgeTextColor,
              ).onlyPadding(top: 5.sp, left: 10.sp),
              MyTextField(
                hintText: 'Enter hotel name',
                borderSideColor: MyFoodAppColor.textFieldBorderColor,
                blurRadius: 0,
                spreadRadius: 0,
                offset: Offset(0, 0),
                containerShadowColor: Colors.transparent,
                fillColor: MyFoodAppColor.textFieldFillColor,
                hintFontSize: 13.sp,
              ).onlyPadding(top: 3.sp),
              GestureDetector(
                onTap: () {
                  Get.to(ConvertMode());
                },
                child: MyContainer(
                  width: 130.sp,
                  height: 33.sp,
                  color: MyFoodAppColor.blackColor,
                  borderRadius: BorderRadius.circular(30.sp),
                  containerWidget: MyText(
                    textAlign: TextAlign.center,
                    text: 'UPDATE',
                    fontSize: 14.sp,
                    fontWeightText: FontWeight.w600,
                    textColor: MyFoodAppColor.yellowColor,
                  ).onlyPadding(top: 6.sp),
                ).onlyPadding(top: 60.sp, left: 50.sp, bottom: 40.sp),
              ),
            ],
          ).onlyPadding(left: 32.sp),
        ),
      ),
    );
  }
}
