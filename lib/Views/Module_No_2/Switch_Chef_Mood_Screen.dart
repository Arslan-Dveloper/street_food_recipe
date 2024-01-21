import 'dart:async';

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:street_food_recipe/Extension/Padding_Extension.dart';
import 'package:street_food_recipe/Helpers/constant.dart';
import 'package:street_food_recipe/Views/Module_No_2/Chef_Mood_Screen.dart';

class SwitchMoodScreen extends StatefulWidget {
  @override
  State<SwitchMoodScreen> createState() => _SwitchMoodScreenState();
}

class _SwitchMoodScreenState extends State<SwitchMoodScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 5),
      () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => ChefMoodScreen(),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyFoodAppColor.blackColor,
      body: SafeArea(
        child: Column(
          children: [
            Image.asset(
              'assets/images/ss 1.png',
              scale: 1.5,
            ),
            RichText(
              text: TextSpan(
                text: 'Please wait we are Switching ',
                style: TextStyle(fontSize: 16.sp),
                children: <TextSpan>[
                  TextSpan(
                      text: 'you to',
                      style: TextStyle(color: MyFoodAppColor.whiteColor)),
                  TextSpan(
                      text: '  chef Mode',
                      style: TextStyle(color: MyFoodAppColor.yellowColor)),
                ],
              ),
            ).onlyPadding(top: 35.sp)
          ],
        ).symmetricPadding(horizontal: 40.sp).onlyPadding(top: 35.h),
      ),
    );
  }
}
