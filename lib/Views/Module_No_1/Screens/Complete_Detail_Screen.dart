import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:street_food_recipe/Controller/Controller_File.dart';
import 'package:street_food_recipe/Extension/Padding_Extension.dart';
import 'package:street_food_recipe/Helpers/constant.dart';
import 'package:street_food_recipe/MyCustomWidget/CustomWidget.dart';

class DetailedScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MyFoodAppController controller = Get.put(MyFoodAppController());
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            leading: GestureDetector(
              onTap: () {
                Get.back();
              },
              child: Icon(
                Icons.arrow_back_ios,
                color: MyFoodAppColor.whiteColor,
              ),
            ),
            automaticallyImplyLeading: false,
            expandedHeight: 250.sp,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'assets/images/Favourit.png',
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          MyText(
                            text: 'Crispy Beef Burger',
                            fontSize: 16.sp,
                            fontWeightText: FontWeight.w600,
                            textColor: MyFoodAppColor.yellowColor,
                          ),
                          MyText(
                            text: 'Racipe by Jame Jones',
                            fontSize: 10.sp,
                            fontWeightText: FontWeight.w600,
                            textColor: MyFoodAppColor.greywColor,
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          MyText(
                            text: 'Rate the chief',
                            fontSize: 14.sp,
                            fontWeightText: FontWeight.bold,
                            textColor: MyFoodAppColor.blackColor,
                          ),
                          Image.asset(
                            'assets/images/star image.png',
                            scale: 1.1,
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      MyText(
                        text: 'Estimated Time',
                        fontSize: 14.sp,
                        fontWeightText: FontWeight.w600,
                        textColor: MyFoodAppColor.blackColor,
                      ),
                      MyText(
                        text: '30 min',
                        fontSize: 14.sp,
                        fontWeightText: FontWeight.w600,
                        textColor: MyFoodAppColor.greywColor,
                      ).onlyPadding(left: 100.sp),
                    ],
                  ).onlyPadding(top: 8.sp),
                  Row(
                    children: [
                      MyText(
                        text: 'Require Plates',
                        fontSize: 14.sp,
                        fontWeightText: FontWeight.w600,
                        textColor: MyFoodAppColor.blackColor,
                      ),
                      GestureDetector(
                        onTap: () {
                          controller.number.value--;
                        },
                        child: MyContainer(
                          width: 30.sp,
                          height: 30.sp,
                          shadowColor:
                              MyFoodAppColor.greywColor.withOpacity(0.9),
                          blurRadius: 10,
                          spreadRadiusBox: 0.3,
                          color: MyFoodAppColor.whiteColor,
                          borderRadius: BorderRadius.circular(7.sp),
                          containerWidget: Center(
                            child: MyContainer(
                              width: 20.sp,
                              height: 20.sp,
                              color: MyFoodAppColor.yellowColor,
                              borderRadius: BorderRadius.circular(50.sp),
                              containerWidget: Icon(
                                Icons.exposure_minus_1,
                                color: MyFoodAppColor.whiteColor,
                              ),
                            ),
                          ),
                        ),
                      ).onlyPadding(left: 80.sp),
                      Obx(
                        () => MyText(
                          text: '${controller.number.value}',
                          fontSize: 14.sp,
                          fontWeightText: FontWeight.w600,
                          textColor: MyFoodAppColor.blackColor,
                        ).onlyPadding(left: 10.sp),
                      ),
                      GestureDetector(
                        onTap: () {
                          controller.number.value++;
                        },
                        child: MyContainer(
                          width: 30.sp,
                          height: 30.sp,
                          shadowColor:
                              MyFoodAppColor.greywColor.withOpacity(0.9),
                          blurRadius: 10,
                          spreadRadiusBox: 0.3,
                          color: MyFoodAppColor.whiteColor,
                          borderRadius: BorderRadius.circular(7.sp),
                          containerWidget: Center(
                            child: MyContainer(
                              width: 20.sp,
                              height: 20.sp,
                              color: MyFoodAppColor.yellowColor,
                              borderRadius: BorderRadius.circular(50.sp),
                              containerWidget: Icon(
                                Icons.plus_one,
                                color: MyFoodAppColor.whiteColor,
                              ),
                            ),
                          ),
                        ).onlyPadding(left: 15.sp),
                      ),
                    ],
                  ).onlyPadding(top: 8.sp),
                ],
              ),
            ).symmetricPadding(horizontal: 8.sp),
          )
        ],
      ),
    );
  }
}
