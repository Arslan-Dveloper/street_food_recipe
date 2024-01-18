import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:street_food_recipe/Extension/Padding_Extension.dart';
import 'package:street_food_recipe/Helpers/constant.dart';
import 'package:street_food_recipe/MyCustomWidget/CustomWidget.dart';
import 'package:street_food_recipe/Views/Module_No_1/Screens/HomeScreen.dart';

class EditProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: Icon(Icons.arrow_back_ios),
        ),
        title: MyText(
          text: 'Profile',
          fontWeightText: FontWeight.w600,
          fontSize: 12.sp,
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MyText(
                text: 'ABDUL HANNAN',
                fontSize: 16.sp,
                fontWeightText: FontWeight.w600,
              ).onlyPadding(left: 55.sp, top: 40.sp),
              MyText(
                text: 'abc@gmail.com',
                fontSize: 10.sp,
                fontWeightText: FontWeight.w600,
                textColor: MyFoodAppColor.greywColor,
              ).onlyPadding(left: 70.sp),
              MyContainer(
                height: 100.sp,
                width: 100.sp,
                borderRadius: BorderRadius.circular(50.sp),
                border: Border.all(color: MyFoodAppColor.yellowColor, width: 2),
                containerWidget: Image.asset('assets/images/man AppBar.png')
                    .allPadding(all: 1.sp),
              ).onlyPadding(left: 70.sp, top: 20.sp),
              MyText(
                text: 'Name',
                fontSize: 12.sp,
                fontWeightText: FontWeight.w600,
                textColor: MyFoodAppColor.greywColor,
              ).onlyPadding(left: 10.sp, top: 20.sp),
              MyTextField(
                borderSideColor: MyFoodAppColor.textFieldBorderColor,
                blurRadius: 0,
                spreadRadius: 0,
                offset: Offset.zero,
                containerShadowColor: Colors.transparent,
                fillColor: MyFoodAppColor.textFieldBorderColor.withOpacity(0.1),
                hintText: 'ABDUL HANNAN',
              ).onlyPadding(top: 7.sp),
              MyText(
                text: 'Email',
                fontSize: 12.sp,
                fontWeightText: FontWeight.w600,
                textColor: MyFoodAppColor.greywColor,
              ).onlyPadding(left: 10.sp, top: 20.sp),
              MyTextField(
                borderSideColor: MyFoodAppColor.textFieldBorderColor,
                blurRadius: 0,
                spreadRadius: 0,
                offset: Offset.zero,
                containerShadowColor: Colors.transparent,
                fillColor: MyFoodAppColor.textFieldBorderColor.withOpacity(0.1),
                hintText: 'abc@gmail.com',
              ).onlyPadding(top: 6.sp),
              GestureDetector(
                onTap: () {
                  Get.to(HomeLayout());
                },
                child: MyContainer(
                  width: 150.sp,
                  height: 35.sp,
                  color: MyFoodAppColor.blackColor,
                  borderRadius: BorderRadius.circular(30.sp),
                  containerWidget: MyText(
                    text: 'UPDATE',
                    textColor: MyFoodAppColor.yellowColor,
                    fontSize: 16.sp,
                    fontWeightText: FontWeight.w600,
                  ).onlyPadding(left: 40.sp, top: 6.sp),
                ).onlyPadding(left: 60.sp, top: 60.sp),
              )
            ],
          ).symmetricPadding(horizontal: 28.sp),
        ),
      ),
    );
  }
}
