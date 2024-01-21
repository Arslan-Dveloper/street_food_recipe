import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:street_food_recipe/Controller/Controller_File.dart';
import 'package:street_food_recipe/Extension/Padding_Extension.dart';
import 'package:street_food_recipe/Helpers/constant.dart';
import 'package:street_food_recipe/MyCustomWidget/CustomWidget.dart';
import 'package:street_food_recipe/Views/Module_No_1/Screens/Log_In_Screen.dart';

class SingUpPage extends StatelessWidget {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _confirmPasswordController = TextEditingController();

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
          child: Icon(Icons.arrow_back_ios_new, size: 18.sp)
              .onlyPadding(top: 10.sp),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              MyContainer(
                width: 100,
                height: 100,
                borderRadius: BorderRadius.circular(50.sp),
                color: MyFoodAppColor.yellowColor,
              ).onlyPadding(top: 10.sp,left: 15.sp),
              MyText(
                text: 'Create a New Account',
                fontSize: 21.sp,
                fontWeightText: FontWeight.w700,
              ).onlyPadding(top: 25.sp, left: 35.sp),
              MyText(textAlign: TextAlign.justify,
                fontSize: 12.sp,
                text: 'Create an account so you can see our\nlatest Racipes',
                textColor: MyFoodAppColor.greywColor,
              ).onlyPadding(top: 100.sp, left: 32.sp,),
              Image.asset('assets/images/purepng 4.png',scale: 1.8,).onlyPadding(top: 490.sp,left: 130.sp),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MyText(
                    fontSize: 12.sp,
                    text: 'Name',
                    textColor: MyFoodAppColor.greywColor,
                  ).onlyPadding(left: 10.sp),
                  MyTextField(
                    textFilledController: _nameController,
                    hintText: 'ABDUL HANNAN',
                    keyBoardType: TextInputType.name,
                  ).onlyPadding(top: 5.sp),
                  MyText(
                    fontSize: 12.sp,
                    text: 'Email',
                    textColor: MyFoodAppColor.greywColor,
                  ).onlyPadding(top: 10.sp, left: 10.sp),
                  MyTextField(
                    keyBoardType: TextInputType.emailAddress,
                    textFilledController: _emailController,
                    hintText: 'abc@gmail.com',
                  ).onlyPadding(top: 5.sp),
                  MyText(
                    fontSize: 12.sp,
                    text: 'Password',
                    textColor: MyFoodAppColor.greywColor,
                  ).onlyPadding(top: 10.sp, left: 10.sp),
                  Obx(
                    () => MyTextField(
                      textFilledController: _passwordController,
                      keyBoardType: TextInputType.emailAddress,
                      hintText: '**********',
                      obscuringText: controller.isHiddenOne.value,
                      icon: controller.isHiddenOne.value
                          ? Icons.remove_red_eye_outlined
                          : Icons.remove_red_eye,
                      onIconTap: () {
                        controller.isHiddenOne.value =
                            !controller.isHiddenOne.value;
                      },
                    ),
                  ).onlyPadding(top: 5.sp),
                  MyText(
                    fontSize: 12.sp,
                    text: 'Confirm Password',
                    textColor: MyFoodAppColor.greywColor,
                  ).onlyPadding(top: 10.sp, left: 10.sp),
                  Obx(
                    () => MyTextField(
                      textFilledController: _confirmPasswordController,
                      keyBoardType: TextInputType.emailAddress,
                      hintText: '**********',
                      obscuringText: controller.isHiddenTwo.value,
                      icon: controller.isHiddenTwo.value
                          ? Icons.remove_red_eye_outlined
                          : Icons.remove_red_eye,
                      onIconTap: () {
                        controller.isHiddenTwo.value =
                            !controller.isHiddenTwo.value;
                      },
                    ),
                  ).onlyPadding(top: 10.sp),
                  MyContainer(
                    width: 210.sp,
                    height: 37.sp,
                    color: MyFoodAppColor.yellowColor,
                    borderRadius: BorderRadius.circular(30),
                    containerWidget: MyText(
                      text: 'SIGNUP',
                      textColor: MyFoodAppColor.blackColor,
                      fontSize: 14.sp,
                      fontWeightText: FontWeight.w800,textAlign: TextAlign.center,
                    ).onlyPadding(top: 6.sp),
                  ).onlyPadding(top: 40.sp, left: 16.sp),
                  MyContainer(
                    width: 210.sp,
                    height: 37.sp,
                    color: MyFoodAppColor.yellowColor,
                    borderRadius: BorderRadius.circular(30),
                    containerWidget: Row(
                      children: [
                        Image.asset(
                          'assets/images/google.png',
                          scale: 1.3.sp,
                        ).onlyPadding(left: 20.sp),
                        MyText(
                          text: 'Signup with Google',
                          textColor: MyFoodAppColor.blackColor,
                          fontSize: 12.sp,
                          fontWeightText: FontWeight.w600,
                        ).onlyPadding(left: 15.sp),
                      ],
                    ),
                  ).onlyPadding(top: 40.sp, left: 16.sp),
                  IntrinsicHeight(
                    child: Row(
                      children: [
                        MyText(
                          fontSize: 12.sp,
                          fontWeightText: FontWeight.bold,
                          text: 'Already have an account',
                          textColor: MyFoodAppColor.blackColor,
                        ),
                        VerticalDivider(
                          color: MyFoodAppColor.yellowColor,
                          thickness: 2.sp,
                          indent: 2.sp,
                          endIndent: 2.sp,
                        ),
                        GestureDetector(
                          onTap: (){
                            Get.to(ScreenLogIn());
                          },
                          child: MyText(
                            fontSize: 12.sp,
                            fontWeightText: FontWeight.bold,
                            text: ' LOGIN',
                            textColor: MyFoodAppColor.yellowColor,
                          ),
                        ),
                      ],
                    ).onlyPadding(top: 40.sp, left: 22.sp, bottom: 20.sp),
                  )
                ],
              ).onlyPadding(top: 150.sp, left: 32.sp)
            ],
          ),
        ),
      )
    );
  }
}
