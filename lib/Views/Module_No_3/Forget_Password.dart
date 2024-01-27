import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:street_food_recipe/Extension/Padding_Extension.dart';
import 'package:street_food_recipe/Helpers/constant.dart';
import 'package:street_food_recipe/MyCustomWidget/CustomWidget.dart';

class ForgetPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: MyText(
          text: 'Forget Password',
          fontSize: 14.sp,
          fontWeightText: FontWeight.w600,
        ),
        centerTitle: true,
        leading: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: Icon(
            Icons.arrow_back_ios_new,
            size: 16.sp,
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MyContainer(
                width: 200.sp,
                height: 200.sp,
                containerWidget: Image.asset('assets/images/women.png'),
              ).onlyPadding(top: 40.sp),
              MyText(
                text: 'Select email should we use to reset\npassword',
                textColor: MyFoodAppColor.greyColor,
                fontSize: 12.sp,
              ).onlyPadding(top: 20.sp),
              MyTextField(
                hintText: 'abc@gmail.com',
                offset: Offset(0, 0),
                blurRadius: 0,
                spreadRadius: 0,
                borderSideColor: Colors.transparent,
                containerShadowColor: Colors.transparent,
                icon: Icons.circle,
                iconColor: MyFoodAppColor.yellowColor,
              ).onlyPadding(top: 40.sp),
              MyContainer(
                width: 100.sp,
                height: 35.sp,
                color: MyFoodAppColor.yellowColor,
                borderRadius: BorderRadius.circular(30.sp),
                containerWidget: MyText(
                  text: 'SEND',
                  textAlign: TextAlign.center,
                  fontSize: 14.sp,
                  fontWeightText: FontWeight.w600,
                ).onlyPadding(top: 7.sp),
              ).onlyPadding(top: 80.sp, left: 60.sp),
            ],
          ).onlyPadding(left: 40.sp),
        ),
      ),
    );
  }
}
