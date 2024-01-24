import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
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
                    border: Border.all(color: MyFoodAppColor.greyColor),
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
                      controller.isTrue.value = false;
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
              color: MyFoodAppColor.greyColor,
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
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverAppBar(
            backgroundColor: MyFoodAppColor.appBarColor,
            expandedHeight: 200.sp,
            flexibleSpace: FlexibleSpaceBar(
                background: Column(
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
                                  Border.all(color: MyFoodAppColor.greyColor),
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
                      textColor: MyFoodAppColor.greyColor,
                      fontSize: 12.sp,
                    ).onlyPadding(top: 15.sp),
                    MyText(
                      text: 'Make your own food,',
                      textColor: MyFoodAppColor.greyColor,
                      fontSize: 15.sp,
                      fontWeightText: FontWeight.w500,
                    ),
                    Row(
                      children: [
                        MyText(
                          text: 'stay at',
                          textColor: MyFoodAppColor.greyColor,
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
                ).onlyPadding(left: 20.sp, top: 20.sp).onlyPadding(top: 20.sp)),
          ),
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MyText(
                  text: 'Feature Recipes',
                  fontSize: 15.sp,
                  fontWeightText: FontWeight.w600,
                ).onlyPadding(top: 5.sp, left: 5.sp),
                SizedBox(
                  height: 130.sp,
                  child: PageView.builder(
                    controller: controller.pageControllerOne,
                    itemCount: 7,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return MyContainer(
                        color: MyFoodAppColor.yellowColor,
                        borderRadius: BorderRadius.circular(10.sp),
                      ).onlyPadding(top: 7.sp, left: 5.sp);
                    },
                  ),
                ),
                SmoothPageIndicator(
                  controller: controller.pageControllerOne,
                  count: 7,
                  effect: SlideEffect(
                    activeDotColor: MyFoodAppColor.yellowColor,
                  ),
                ).onlyPadding(left: 90.sp, top: 10.sp),
                Row(
                  children: [
                    MyText(
                      text: 'Categories',
                      fontSize: 16.sp,
                      fontWeightText: FontWeight.w600,
                    ).onlyPadding(left: 7.sp),
                    Obx(
                      () => GestureDetector(
                        onTap: () {
                          controller.click.value = !controller.click.value;
                        },
                        child: Icon(
                          Icons.arrow_back_ios_sharp,
                          color: controller.click.value
                              ? MyFoodAppColor.yellowColor
                              : MyFoodAppColor.appBarColor,
                          size: 16.sp,
                        ).onlyPadding(left: 160.sp),
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 16.sp,
                    ),
                  ],
                ).onlyPadding(top: 5.sp),
                SizedBox(
                  height: 40.sp,
                  child: ListView.builder(
                    itemCount: controller.data.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return MyContainer(
                        width: 100.sp,
                        borderRadius: BorderRadius.circular(15.sp),
                        color: controller.whiteColor.value,
                        border: Border.all(
                            color: MyFoodAppColor.yellowColor, width: 2),
                        containerWidget: MyText(
                          text: controller.data[index],
                          fontSize: 16.sp,
                          textAlign: TextAlign.center,
                          fontWeightText: FontWeight.w600,
                        ).onlyPadding(top: 5.sp),
                      ).onlyPadding(left: 8.sp, top: 5.sp);
                    },
                  ),
                ).onlyPadding(top: 10.sp),
                // GridView.builder(
                //   shrinkWrap: true,
                //   itemCount: 10,
                //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                //       crossAxisCount: 2),
                //   itemBuilder: (context, index) {
                //     return MyContainer(
                //       height: 100,
                //       width: 100,
                //       containerWidget: Image.asset('assets/images/google.png'),
                //     );
                //   },
                // )
                MyContainer(height: 100.sp,color: MyFoodAppColor.yellowColor,).allPadding(all: 10.sp),
                MyContainer(height: 100.sp,color: MyFoodAppColor.yellowColor,).allPadding(all: 10.sp),
                MyContainer(height: 100.sp,color: MyFoodAppColor.yellowColor,).allPadding(all: 10.sp),
                MyContainer(height: 100.sp,color: MyFoodAppColor.yellowColor,).allPadding(all: 10.sp),
                MyContainer(height: 100.sp,color: MyFoodAppColor.yellowColor,).allPadding(all: 10.sp),
              ],
            ),
          )
        ],
      ),
    );
  }
}
