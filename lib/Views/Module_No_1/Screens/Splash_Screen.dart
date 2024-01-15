import 'dart:async';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:street_food_recipe/Extension/Padding_Extension.dart';
import 'package:street_food_recipe/Helpers/constant.dart';
import 'package:street_food_recipe/MyCustomWidget/CustomWidget.dart';
import 'package:street_food_recipe/Views/Module_No_1/Screens/On_boarding_Screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 5),
      () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => OnBoardingScreen(),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyFoodAppColor.appBarColor,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset('assets/images/Food Street Logo 1.png')
                .symmetricPadding(horizontal: 25.sp)
                .onlyPadding(top: 30.h),
            MyText(
              text: 'TRY OUR NEW TASTE',
              fontSize: 23.sp,
              fontWeightText: FontWeight.w700,
              textColor: MyFoodAppColor.yellowColor,
            ).onlyPadding(left: 40.sp,top: 10.sp),
          ],
        ),
      ),
    );
  }
}
