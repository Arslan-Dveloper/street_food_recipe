import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:street_food_recipe/Controller/Controller_File.dart';
import 'package:street_food_recipe/Extension/Padding_Extension.dart';
import 'package:street_food_recipe/Helpers/constant.dart';
import 'package:street_food_recipe/MyCustomWidget/CustomWidget.dart';
import 'package:street_food_recipe/Views/Module_No_1/Screens/SignUpPage.dart';

class OnBoardingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MyFoodAppController controller = Get.put(MyFoodAppController());
    return Scaffold(
      appBar: AppBar(
        actions: [
          Obx(
            () => GestureDetector(
              onTap: () {
                Get.to(SingUpPage());
              },
              child: controller.pageIndex.value == controller.images.length - 1
                  ? MyText(
                      text: '',
                    )
                  : MyText(
                      text: 'Skip',
                      textColor: MyFoodAppColor.greywColor,
                      fontSize: 14.sp,
                      fontWeightText: FontWeight.w600,
                    ).onlyPadding(right: 10.sp),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: PageView.builder(
          itemCount: controller.images.length,
          controller: controller.pageController,
          onPageChanged: controller.onPageChanged,
          physics: BouncingScrollPhysics(),
          itemBuilder: (context, index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 250.sp,
                  height: 250.sp,
                  child: Image.asset(
                    controller.images[index],
                  ),
                ).onlyPadding(left: 15.sp, top: 45.sp),
                SmoothPageIndicator(
                        axisDirection: Axis.horizontal,
                        effect: ExpandingDotsEffect(
                            dotHeight: 5.sp,
                            dotWidth: 4.sp,
                            activeDotColor: MyFoodAppColor.yellowColor),
                        controller: controller.pageController,
                        count: controller.images.length)
                    .onlyPadding(left: 120.sp),
                MyText(
                  text: controller.headingOne[index],
                  fontSize: 17.sp,
                  fontWeightText: FontWeight.w600,
                ).onlyPadding(left: 25.sp, top: 25.sp),
                MyText(
                  textAlign: TextAlign.center,
                  text: controller.headingTwo[index],
                  fontSize: 18.sp,
                  fontWeightText: FontWeight.w600,
                ).onlyPadding(left: 20.sp, top: 10.sp),
                MyText(
                  text: controller.bodyText[index],
                  fontSize: 13.sp,
                  textColor: MyFoodAppColor.greywColor,
                  textAlign: TextAlign.center,
                ).onlyPadding(top: 25.sp),
                GestureDetector(
                  onTap: () {
                    controller.pageIndex.value == controller.images.length - 1
                        ? Get.to(SingUpPage())
                        : controller.pageController.nextPage(
                            duration: Duration(milliseconds: 300),
                            curve: Curves.bounceOut);
                  },
                  child: Obx(
                    () => Container(
                      decoration: BoxDecoration(
                        color: MyFoodAppColor.yellowColor,
                        borderRadius: BorderRadius.circular(50.sp),
                      ),
                      child: controller.pageIndex.value ==
                              controller.images.length - 1
                          ? MyText(
                              text: 'Get Started',
                              fontSize: 16.sp,
                              fontWeightText: FontWeight.bold,
                            ).symmetricPadding(
                              vertical: 6.sp, horizontal: 16.sp)
                          : Icon(
                              controller.MyIcon.value,
                              size: 20.sp,
                            ).allPadding(all: 10.sp),
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ).symmetricPadding(horizontal: 8.sp),
    );
  }
}
