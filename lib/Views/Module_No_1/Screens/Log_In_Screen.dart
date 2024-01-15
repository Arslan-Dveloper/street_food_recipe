import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:street_food_recipe/Controller/Controller_File.dart';
import 'package:street_food_recipe/Extension/Padding_Extension.dart';
import 'package:street_food_recipe/Helpers/constant.dart';
import 'package:street_food_recipe/MyCustomWidget/CustomWidget.dart';
import 'package:street_food_recipe/Views/Module_No_1/Screens/Forget_Password.dart';
import 'package:street_food_recipe/Views/Module_No_1/Screens/SignUpPage.dart';

class ScreenLogIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MyFoodAppController controller = Get.put(MyFoodAppController());
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: Icon(
            Icons.arrow_back_ios,
            size: 18.sp,
          ),
        ),
      ),
      body: SafeArea(
        child: Stack(
          children: [
            MyContainer(
              width: 100,
              height: 100,
              color: MyFoodAppColor.yellowColor,
              shape: BoxShape.circle,
            ).onlyPadding(top: 5.sp, left: 10.sp),
            MyText(
              text: 'Welcome Back',
              fontSize: 20.sp,
              fontWeightText: FontWeight.w900,
            ).onlyPadding(top: 25.sp, left: 35.sp),
            MyText(
              text:
                  'I am very happy to see you. You can continue to login for latest recipe',
              fontSize: 12.sp,
              textColor: MyFoodAppColor.greywColor,
            ).onlyPadding(left: 19.sp, top: 90.sp, right: 20.sp),
            Positioned(
              bottom: 0,
              right: 0,
              child: Image.asset(
                'assets/images/purepng 4.png',
                scale: 1.6.sp,
              ),
            ),
            Column(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MyText(
                        text: 'Name',
                        fontSize: 12.sp,
                        textColor: MyFoodAppColor.greywColor,
                      ).onlyPadding(left: 10.sp),
                      MyTextField(
                        hintText: 'abc@gmail.com',
                      ).onlyPadding(top: 6.sp),
                      MyText(
                        text: 'Password',
                        fontSize: 12.sp,
                        textColor: MyFoodAppColor.greywColor,
                      ).onlyPadding(left: 10.sp, top: 20.sp),
                      Obx(
                        () => MyTextField(
                          obscuringText: controller.isHiddenLogIn.value,
                          hintText: '**********',
                          icon: controller.isHiddenLogIn.value
                              ? Icons.remove_red_eye
                              : Icons.remove_red_eye_outlined,
                          onIconTap: () {
                            controller.isHiddenLogIn.value =
                                !controller.isHiddenLogIn.value;
                          },
                        ).onlyPadding(top: 6.sp),
                      ),
                      GestureDetector(
                        onTap: (){
                          Get.to(ForgetPasswordScreen());
                        },
                        child: MyText(
                          text: 'Forget Password',
                          fontSize: 13.sp,
                          fontWeightText: FontWeight.w600,
                          textColor: MyFoodAppColor.forgetColor,
                        ).onlyPadding(left: 125.sp, top: 10.sp),
                      ),
                      MyContainer(
                        width: 150.sp,
                        height: 35.sp,
                        color: MyFoodAppColor.yellowColor,
                        borderRadius: BorderRadius.circular(30.sp),
                        containerWidget: MyText(
                          text: 'LOGIN',
                          fontSize: 16.sp,
                          fontWeightText: FontWeight.bold,
                        ).onlyPadding(top: 6.sp),
                      ).onlyPadding(left: 50.sp, top: 40.sp),
                    ],
                  ).onlyPadding(top: 150.sp),
                ),
                IntrinsicHeight(
                  child: Row(
                    children: [
                      MyText(
                        text: 'Don’t have an account',
                        fontSize: 14.sp,
                        fontWeightText: FontWeight.bold,
                      ),
                      VerticalDivider(
                        thickness: 2.sp,
                        color: MyFoodAppColor.yellowColor,
                        endIndent: 3.sp,
                        indent: 3.sp,
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.to(SingUpPage());
                        },
                        child: MyText(
                          text: 'SIGNUP',
                          fontSize: 14.sp,
                          fontWeightText: FontWeight.bold,
                          textColor: MyFoodAppColor.yellowColor,
                        ),
                      ),
                    ],
                  ),
                ).onlyPadding(left: 35.sp, bottom: 20.sp)
              ],
            )
          ],
        ),
      ),
    );
  }
}
