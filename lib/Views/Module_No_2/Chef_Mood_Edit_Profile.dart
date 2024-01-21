import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:street_food_recipe/Extension/Padding_Extension.dart';
import 'package:street_food_recipe/Helpers/constant.dart';
import 'package:street_food_recipe/MyCustomWidget/CustomWidget.dart';

class ChefMoodEditProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: Icon(
            Icons.arrow_back_ios_new,
            size: 18.sp,
          ),
        ),
        title: MyText(
          text: "Profile",
          fontSize: 14.sp,
          fontWeightText: FontWeight.w600,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Stack(
          children: [
            MyContainer(
              color: MyFoodAppColor.blackColor,
              height: 90.sp,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25.sp),
                topRight: Radius.circular(25.sp),
              ),
              containerWidget: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MyText(
                    text: 'ABDUL HANNAN',
                    textColor: MyFoodAppColor.yellowColor,
                    fontSize: 16.sp,
                    fontWeightText: FontWeight.w600,
                  ).onlyPadding(bottom: 10.sp),
                  Column(
                    children: [
                      MyText(
                        text: '20',
                        textColor: MyFoodAppColor.yellowColor,
                        fontSize: 16.sp,
                        fontWeightText: FontWeight.w600,
                      ),
                      MyText(
                        text: 'Total Recipe',
                        textColor: MyFoodAppColor.whiteColor,
                        fontSize: 12.sp,
                      ).onlyPadding(top: 2.sp),
                    ],
                  ).onlyPadding(top: 15.sp),
                ],
              ),
            ).onlyPadding(top: 150.sp),
            MyContainer(
              color: MyFoodAppColor.whiteColor,
              //height: double.infinity,
              height: 100,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25.sp),
                topRight: Radius.circular(25.sp),
              ),
            ).onlyPadding(top: 220.sp),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MyContainer(
                  width: 120,
                  height: 120,
                  borderRadius: BorderRadius.circular(50.sp),
                  border: Border.all(
                    width: 2.sp,
                    color: MyFoodAppColor.yellowColor,
                  ),
                  containerWidget: Image.asset('assets/images/man AppBar.png'),
                ).onlyPadding(left: 70.sp, top: 20.sp),
                MyText(
                  text: 'Name',
                  fontSize: 13.sp,
                  textColor: MyFoodAppColor.forgeTextColor,
                ).onlyPadding(top: 130.sp, left: 5.sp),
                MyTextField(
                  hintText: 'ABDUL HANNAN',
                  hintFontSize: 12.sp,
                  borderSideColor: MyFoodAppColor.textFieldBorderColor,
                  fillColor: MyFoodAppColor.textFieldFillColor,
                  offset: Offset(0, 0),
                  blurRadius: 0,
                  spreadRadius: 0,
                  containerShadowColor: Colors.transparent,
                  contectPadding: EdgeInsets.only(bottom: 0, left: 12.sp),
                ).onlyPadding(top: 3.sp),
                MyText(
                  text: 'Email',
                  fontSize: 13.sp,
                  textColor: MyFoodAppColor.forgeTextColor,
                ).onlyPadding(left: 5.sp, top: 3.sp),
                MyTextField(
                  hintText: 'abc@gmail.com',
                  hintFontSize: 12.sp,
                  borderSideColor: MyFoodAppColor.textFieldBorderColor,
                  fillColor: MyFoodAppColor.textFieldFillColor,
                  offset: Offset(0, 0),
                  blurRadius: 0,
                  spreadRadius: 0,
                  containerShadowColor: Colors.transparent,
                  contectPadding: EdgeInsets.only(bottom: 0, left: 12.sp),
                ).onlyPadding(top: 3.sp),
                MyText(
                  text: 'Specialization',
                  fontSize: 13.sp,
                  textColor: MyFoodAppColor.forgeTextColor,
                ).onlyPadding(left: 5.sp, top: 5.sp),
                MyTextField(
                  hintText: 'BBQ',
                  hintFontSize: 12.sp,
                  borderSideColor: MyFoodAppColor.textFieldBorderColor,
                  fillColor: MyFoodAppColor.textFieldFillColor,
                  offset: Offset(0, 0),
                  blurRadius: 0,
                  spreadRadius: 0,
                  containerShadowColor: Colors.transparent,
                  contectPadding: EdgeInsets.only(bottom: 0, left: 12.sp),
                ).onlyPadding(top: 3.sp),
                MyText(
                  text: 'Experience',
                  fontSize: 13.sp,
                  textColor: MyFoodAppColor.forgeTextColor,
                ).onlyPadding(left: 5.sp, top: 3.sp),
                MyTextField(
                  hintText: '3 YEAR',
                  hintFontSize: 12.sp,
                  borderSideColor: MyFoodAppColor.textFieldBorderColor,
                  fillColor: MyFoodAppColor.textFieldFillColor,
                  offset: Offset(0, 0),
                  blurRadius: 0,
                  spreadRadius: 0,
                  containerShadowColor: Colors.transparent,
                  contectPadding: EdgeInsets.only(bottom: 0, left: 12.sp),
                ).onlyPadding(top: 3.sp),
                MyText(
                  text: 'Recently Work ',
                  fontSize: 13.sp,
                  textColor: MyFoodAppColor.forgeTextColor,
                ).onlyPadding(left: 5.sp, top: 3.sp),
                MyTextField(
                  hintText: 'Celebration Hotel and Resturant',
                  hintFontSize: 12.sp,
                  borderSideColor: MyFoodAppColor.textFieldBorderColor,
                  fillColor: MyFoodAppColor.textFieldFillColor,
                  offset: Offset(0, 0),
                  blurRadius: 0,
                  spreadRadius: 0,
                  containerShadowColor: Colors.transparent,
                  contectPadding: EdgeInsets.only(bottom: 0, left: 12.sp),
                ).onlyPadding(top: 3.sp),
                MyContainer(
                  width: 130.sp,
                  height: 35.sp,
                  color: MyFoodAppColor.blackColor,
                  borderRadius: BorderRadius.circular(25.sp),
                  containerWidget: MyText(
                    text: 'UPDATE',
                    fontSize: 16.sp,
                    textAlign: TextAlign.center,
                    fontWeightText: FontWeight.w600,
                    textColor: MyFoodAppColor.yellowColor,
                  ).onlyPadding(top: 6.sp),
                ).onlyPadding(left: 50.sp,top: 60.sp,bottom: 35.sp)
              ],
            ).onlyPadding(left: 30.sp)
          ],
        ),
      ),
    );
  }
}
