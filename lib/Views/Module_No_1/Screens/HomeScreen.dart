import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:street_food_recipe/Controller/Controller_File.dart';
import 'package:street_food_recipe/Extension/Padding_Extension.dart';
import 'package:street_food_recipe/Helpers/constant.dart';
import 'package:street_food_recipe/MyCustomWidget/CustomWidget.dart';
import 'package:street_food_recipe/Views/Module_No_1/Screens/Notification_Screen.dart';
import 'package:street_food_recipe/Views/Module_No_1/Screens/Search_Screen.dart';
import 'package:street_food_recipe/Views/Module_No_1/Screens/Setting.dart';
import 'package:street_food_recipe/Views/Module_No_2/Switch_Chef_Mood_Screen.dart';

class HomeLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MyFoodAppController controller = Get.put(MyFoodAppController());
    return Scaffold(
      drawer: Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  width: 80.sp,
                  height: 80.sp,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50.sp),
                    border: Border.all(color: MyFoodAppColor.greywColor),
                  ),
                  child: Image.asset('assets/images/man AppBar.png')
                      .allPadding(all: 3.sp),
                ),
                MyText(
                  text: 'Chef Mode',
                  fontSize: 14.sp,
                  fontWeightText: FontWeight.w600,
                ).onlyPadding(left: 5.sp),
                Obx(
                  () => Switch(
                    value: controller.isTrue.value,
                    onChanged: (value) {
                      controller.isTrue.value = !controller.isTrue.value;
                      value = controller.isTrue.value;
                      Get.to(SwitchMoodScreen());
                    },
                  ),
                )
              ],
            ).onlyPadding(top: 20.sp, left: 15.sp),
            MyText(
              text: 'ABDUL HANNAN',
              fontSize: 15.sp,
              fontWeightText: FontWeight.bold,
            ).onlyPadding(top: 10.sp, left: 15.sp),
            MyTextField(
              hintText: 'abc@gmail.com',
              offset: Offset.zero,
              blurRadius: 0,
              spreadRadius: 0,
              containerShadowColor: Colors.transparent,
              borderSideColor: Colors.transparent,
              fillColor: Colors.transparent,
              contectPadding: EdgeInsets.only(left: 0),
              hintTextColor: MyFoodAppColor.forgeTextColor,
            ).onlyPadding(left: 15.sp),
            Divider(
              thickness: 2.sp,
              color: MyFoodAppColor.greywColor,
            ),
            MyContainerShadow(
              widget: Row(
                children: [
                  Icon(
                    Icons.settings,
                    color: MyFoodAppColor.yellowColor,
                    size: 23.sp,
                  ).onlyPadding(left: 5.sp),
                  MyText(
                    text: 'Setting',
                    textColor: MyFoodAppColor.blackColor,
                    fontSize: 15.sp,
                  ).onlyPadding(left: 10.sp),
                  GestureDetector(
                    onTap: () {
                      Get.to(Setting());
                    },
                    child: Icon(
                      Icons.arrow_forward_ios,
                      size: 12.sp,
                      color: MyFoodAppColor.yellowColor,
                    ).onlyPadding(left: 60.sp),
                  )
                ],
              ),
            ).onlyPadding(left: 12.sp, top: 10.sp),
            MyContainerShadow(
              widget: Row(
                children: [
                  Icon(
                    Icons.settings,
                    color: MyFoodAppColor.yellowColor,
                    size: 23.sp,
                  ).onlyPadding(left: 5.sp),
                  MyText(
                    text: 'Log Out',
                    textColor: MyFoodAppColor.blackColor,
                    fontSize: 15.sp,
                  ).onlyPadding(left: 10.sp),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 12.sp,
                    color: MyFoodAppColor.yellowColor,
                  ).onlyPadding(left: 60.sp)
                ],
              ),
            ).onlyPadding(left: 12.sp, top: 10),
          ],
        ),
      ),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: MyFoodAppColor.appBarColor,
            expandedHeight: 220.sp,
            flexibleSpace: Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 80,
                          height: 80,
                          child: Image.asset('assets/images/Ellipse 2.png')
                              .allPadding(all: 4.sp),
                          decoration: BoxDecoration(
                              border:
                                  Border.all(color: MyFoodAppColor.greywColor),
                              borderRadius: BorderRadius.circular(50.sp)),
                        ),
                        GestureDetector(
                          onTap: () {
                            Get.to(NotificationScreen());
                          },
                          child: Icon(
                            Icons.notifications_active,
                            color: MyFoodAppColor.whiteColor,
                            size: 25.sp,
                          ).onlyPadding(left: 150.sp),
                        ),
                        Builder(
                          builder: (context) {
                            return GestureDetector(
                              onTap: () {
                                Scaffold.of(context).openDrawer();
                              },
                              child: Icon(
                                Icons.menu,
                                color: MyFoodAppColor.whiteColor,
                                size: 25.sp,
                              ).onlyPadding(left: 4.sp),
                            );
                          },
                        )
                      ],
                    ),
                    MyText(
                      text: 'Hello, John',
                      textColor: MyFoodAppColor.greywColor,
                      fontSize: 12.sp,
                    ).onlyPadding(top: 15.sp),
                    MyText(
                      text: 'Make your own food,',
                      textColor: MyFoodAppColor.greywColor,
                      fontSize: 15.sp,
                      fontWeightText: FontWeight.w500,
                    ),
                    Row(
                      children: [
                        MyText(
                          text: 'stay at',
                          textColor: MyFoodAppColor.greywColor,
                          fontSize: 15.sp,
                          fontWeightText: FontWeight.w500,
                        ),
                        MyText(
                          text: ' Home,',
                          textColor: MyFoodAppColor.yellowColor,
                          fontSize: 15.sp,
                          fontWeightText: FontWeight.w600,
                        )
                      ],
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.to(SearchScreen());
                      },
                      child: MyContainer(
                        width: 30.sp,
                        height: 30.sp,
                        color: MyFoodAppColor.yellowColor,
                        borderRadius: BorderRadius.circular(7.sp),
                        containerWidget: Icon(
                          Icons.search_rounded,
                          color: MyFoodAppColor.whiteColor,
                          size: 22.sp,
                        ),
                      ).onlyPadding(left: 230.sp),
                    ),
                  ],
                ).onlyPadding(left: 20.sp, top: 20.sp).onlyPadding(top: 20.sp),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
