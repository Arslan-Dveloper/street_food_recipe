import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:street_food_recipe/Extension/Padding_Extension.dart';
import 'package:street_food_recipe/Helpers/constant.dart';
import 'package:street_food_recipe/MyCustomWidget/CustomWidget.dart';
import 'package:street_food_recipe/Views/Module_No_1/Layout/Bottom_Navigation.dart';


class ForgetPasswordScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: Icon(
            Icons.arrow_back_ios,
            size: 16.sp,
          ),
        ),
        title: MyText(
          text: 'Forget Password',
          fontSize: 16.sp,
          fontWeightText: FontWeight.w600,
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 300.sp,
                width: 230.sp,
                child: Image.asset('assets/images/women.png'),
              ).onlyPadding(left: 30.sp),
              MyText(
                text: 'Select email should we use to reset password',
                fontSize: 12.sp,
                textColor: MyFoodAppColor.forgeTextColor,
              ).onlyPadding(left: 25.sp,right: 25.sp),
              MyTextField(
                hintText: 'abc@gmail.com',
                offset: Offset.zero,
                blurRadius: 0,
                spreadRadius: 0,
                containerShadowColor: Colors.transparent,
                borderSideColor: Colors.transparent,
                fillColor: Colors.transparent,
                icon: Icons.circle_rounded,
                iconColor: MyFoodAppColor.yellowColor,
                contectPadding: EdgeInsets.only(left: 50),
              ).onlyPadding(left: 20.sp,top: 20.sp),
              GestureDetector(
                onTap: (){
                  Get.to(BottomNavigation());
                },
                child: MyContainer(
                  width: 120.sp,
                  height: 30.sp,
                  color: MyFoodAppColor.yellowColor,
                  borderRadius: BorderRadius.circular(30.sp),
                  containerWidget: MyText(
                    text: 'SEND',
                    fontSize: 16.sp,
                    fontWeightText: FontWeight.w700,
                  ).onlyPadding(top: 3.sp),
                ).onlyPadding(top: 50.sp,left: 95.sp),
              )
            ],
          ),
        ),
      ),
    );
  }
}
