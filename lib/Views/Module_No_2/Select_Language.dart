import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:street_food_recipe/Controller/Controller_Module_Two.dart';
import 'package:street_food_recipe/Extension/Padding_Extension.dart';
import 'package:street_food_recipe/Helpers/constant.dart';
import 'package:street_food_recipe/MyCustomWidget/CustomWidget.dart';
import 'package:street_food_recipe/Views/Module_No_2/Chef_Mood_Add_Screen.dart';

class SelectLanguage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MyFoodAppControllerModuleTwo controller =
        Get.put(MyFoodAppControllerModuleTwo());
    return Scaffold(
      backgroundColor: MyFoodAppColor.appBarColor,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MyText(
              text: '''Do you want to upload recipe in both
                        Language.''',
              textColor: MyFoodAppColor.whiteColor,
              fontSize: 12.sp,
            ).onlyPadding(top: 150.sp),
            RichText(
              text: TextSpan(
                style: TextStyle(
                  color: MyFoodAppColor.whiteColor,
                  fontSize: 13.sp,
                ),
                children: <TextSpan>[
                  TextSpan(
                      text: 'English ',
                      style: TextStyle(color: MyFoodAppColor.yellowColor)),
                  TextSpan(text: 'is necessary but '),
                  TextSpan(
                      text: 'Urdu ',
                      style: TextStyle(color: MyFoodAppColor.yellowColor)),
                  TextSpan(text: 'is optional'),
                ],
              ),
            ).onlyPadding(top: 30.sp),
            Obx(
              () => CheckboxListTile(
                title: MyText(
                  text: 'English',
                  textColor: MyFoodAppColor.yellowColor,
                ),
                value: controller.checkedValueEnglish.value,
                onChanged: (value) {
                  controller.checkedValueEnglish.value =
                      !controller.checkedValueEnglish.value;
                },
                activeColor: MyFoodAppColor.yellowColor,
                checkColor: MyFoodAppColor.whiteColor,
                tristate: controller.checkedValueEnglish.value,
              ).onlyPadding(right: 25.sp),
            ),
            Obx(
              () => CheckboxListTile(
                title: MyText(
                  text: 'Urdu',
                  textColor: MyFoodAppColor.yellowColor,
                ),
                value: controller.checkedValueUrdu.value,
                onChanged: (value) {
                  controller.checkedValueUrdu.value =
                      !controller.checkedValueUrdu.value;
                },
                activeColor: MyFoodAppColor.yellowColor,
                checkColor: MyFoodAppColor.whiteColor,
                tristate: controller.checkedValueUrdu.value,
              ).onlyPadding(right: 25.sp),
            ),
            GestureDetector(
              onTap: () {
                Get.to(ChefMoodAddScreen());
              },
              child: MyContainer(
                width: 140.sp,
                height: 30.sp,
                color: MyFoodAppColor.yellowColor,
                borderRadius: BorderRadius.circular(30.sp),
                containerWidget: MyText(
                  text: 'Done',
                  fontWeightText: FontWeight.w600,
                  fontSize: 14.sp,
                  textAlign: TextAlign.center,
                ).onlyPadding(top: 3.sp),
              ).onlyPadding(top: 35.sp, left: 60.sp),
            ),
          ],
        ).onlyPadding(left: 25.sp),
      ),
    );
  }
}
