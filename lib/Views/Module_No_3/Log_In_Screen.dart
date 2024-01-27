import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:street_food_recipe/Controller/Controller_Module_Three.dart';
import 'package:street_food_recipe/Extension/Padding_Extension.dart';
import 'package:street_food_recipe/Helpers/constant.dart';
import 'package:street_food_recipe/MyCustomWidget/CustomWidget.dart';
import 'package:street_food_recipe/Views/Module_No_3/Forget_Password.dart';

class LogInScreenModuleNoThree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MyFoodAppControllerThree controller = Get.put(MyFoodAppControllerThree());
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios_new),
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Align(
              alignment: Alignment.bottomRight,
              child: Image.asset(
                'assets/images/purepng 4.png',
                scale: 1.5,
              ),
            ),
            MyContainer(
              width: 100,
              height: 100,
              color: MyFoodAppColor.yellowColor,
              borderRadius: BorderRadius.circular(50.sp),
            ).onlyPadding(left: 20.sp, top: 10.sp),
            MyText(
              text: 'Welcome Back',
              fontSize: 19.sp,
              fontWeightText: FontWeight.w600,
            ).onlyPadding(top: 30.sp, left: 40.sp),
            MyText(
              text: '''I am very happy to see you. You can login
to manage user side.''',
              fontSize: 11.sp,
              textColor: MyFoodAppColor.greyColor,
            ).onlyPadding(left: 40.sp, top: 90.sp),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MyText(
                  text: 'Email',
                  textColor: MyFoodAppColor.greyColor,
                  fontSize: 12.sp,
                ).onlyPadding(top: 10.sp, left: 5.sp),
                MyTextField(
                  hintText: 'abc@gmail.com',
                  hintTextColor: MyFoodAppColor.blackColor,
                  borderSideColor: MyFoodAppColor.yellowColor,
                  keyBoardType: TextInputType.emailAddress,
                ).onlyPadding(top: 9.sp),
                MyText(
                  text: 'Password',
                  textColor: MyFoodAppColor.greyColor,
                  fontSize: 12.sp,
                ).onlyPadding(top: 15.sp, left: 5.sp),
                Obx(
                  () => MyTextField(
                    hintText: '*********',
                    hintTextColor: MyFoodAppColor.blackColor,
                    borderSideColor: MyFoodAppColor.yellowColor,
                    icon: controller.isHidden.value
                        ? Icons.remove_red_eye
                        : Icons.remove_red_eye_outlined,
                    iconColor: MyFoodAppColor.greyColor,
                    obscuringText: controller.isHidden.value,
                    onIconTap: () {
                      controller.isHidden.value = !controller.isHidden.value;
                    },
                  ),
                ).onlyPadding(top: 7.sp),
                MyText(
                  text: 'Forget Password',
                  fontSize: 12.sp,
                  fontWeightText: FontWeight.w600,
                  textColor: MyFoodAppColor.greyColor,
                ).onlyPadding(top: 10.sp, left: 135.sp),
                GestureDetector(
                  onTap: () {
                    Get.to(ForgetPassword());
                  },
                  child: MyContainer(
                    width: 130.sp,
                    height: 35.sp,
                    color: MyFoodAppColor.yellowColor,
                    borderRadius: BorderRadius.circular(20.sp),
                    containerWidget: MyText(
                      text: 'LOGIN',
                      fontSize: 14.sp,
                      fontWeightText: FontWeight.w600,
                      textAlign: TextAlign.center,
                    ).onlyPadding(top: 7.sp),
                  ).onlyPadding(top: 40.sp, left: 70.sp),
                )
              ],
            ).onlyPadding(left: 30.sp, top: 140.sp),
          ],
        ),
      ),
    );
  }
}
