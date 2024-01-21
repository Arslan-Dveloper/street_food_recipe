import 'dart:async';

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:street_food_recipe/Extension/Padding_Extension.dart';
import 'package:street_food_recipe/Helpers/constant.dart';
import 'package:street_food_recipe/MyCustomWidget/CustomWidget.dart';
import 'package:street_food_recipe/Views/Module_No_2/Home_Layout_Module_Two/Home_Screen.dart';

class ConvertMode extends StatefulWidget {
  @override
  State<ConvertMode> createState() => _ConvertModeState();
}

class _ConvertModeState extends State<ConvertMode> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 5),
      () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => HomeScreenTwo(),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyFoodAppColor.appBarColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MyText(
            text: '''place switch chef mode giff
  download from given link''',
            textColor: MyFoodAppColor.whiteColor,
            fontSize: 10.sp,
          ).onlyPadding(top: 260.sp, left: 12.sp),
          RichText(
            text: TextSpan(
              style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w600),
              children: <TextSpan>[
                TextSpan(text: 'Hurry! Welcome to\n'),
                TextSpan(
                  text: '''        chef Mode''',
                  style: TextStyle(color: MyFoodAppColor.yellowColor),
                ),
              ],
            ),
          ).onlyPadding(top: 30.sp)
        ],
      ).onlyPadding(left: 60.sp),
    );
  }
}
