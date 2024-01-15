import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:street_food_recipe/Extension/Padding_Extension.dart';
import 'package:street_food_recipe/MyCustomWidget/CustomWidget.dart';
import 'package:street_food_recipe/Views/Module_No_1/Screens/Setting_Two.dart';

class Setting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: Icon(Icons.arrow_back_ios_new),
        ),
        title: MyText(
          text: 'Setting',
          fontSize: 16.sp,
          fontWeightText: FontWeight.w600,
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          children: [
            MyContainerShadow(
              height: 40.sp,
              width: 250.sp,
              borderRadius: BorderRadius.circular(25.sp),
              widget: Row(
                children: [
                  MyText(
                    text: 'Notification',
                    fontSize: 16.sp,
                  ).onlyPadding(left: 20.sp),
                  GestureDetector(
                    onTap: (){
                      Get.to(SettingTwo());
                    },
                    child: Icon(
                      Icons.arrow_forward_ios,
                      size: 15.sp,
                    ).onlyPadding(left: 110.sp),
                  )
                ],
              ),
            ).onlyPadding(left: 20.sp,top: 30.sp)
          ],
        ),
      ),
    );
  }
}
