import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:sizer/sizer.dart';
import 'package:street_food_recipe/Controller/Controller_File.dart';
import 'package:street_food_recipe/Extension/Padding_Extension.dart';
import 'package:street_food_recipe/Helpers/constant.dart';
import 'package:street_food_recipe/MyCustomWidget/CustomWidget.dart';
import 'package:street_food_recipe/Views/Module_No_1/Screens/Eidt_Profile.dart';
import 'package:street_food_recipe/Views/Module_No_1/Screens/Setting.dart';
import 'package:street_food_recipe/Views/Module_No_1/Screens/Setting_Two.dart';

class HomeScreen extends StatelessWidget {
  List<Widget> _LayOutScreen = [
    SettingTwo(),
    Setting(),
    EditProfile(),
  ];

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
                  decoration: BoxDecoration(
                      border: Border.all(
                          width: 2.sp, color: MyFoodAppColor.greywColor),
                      borderRadius: BorderRadius.circular(50)),
                  child: MyContainer(
                    height: 70.sp,
                    width: 70.sp,
                    image: 'assets/images/man AppBar.png',
                  ).allPadding(all: 3.sp),
                ),
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
        shrinkWrap: true,
        physics: BouncingScrollPhysics(),
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: MyFoodAppColor.appBarColor,
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(200.sp),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MyContainer(
                        image: 'assets/images/Ellipse 2.png',
                        containerWidget: MyContainer(
                          height: 80.sp,
                          width: 80.sp,
                          border: Border.all(
                              color: MyFoodAppColor.whiteColor, width: 2),
                          borderRadius: BorderRadius.circular(50.sp),
                        ),
                      ),
                      MyText(
                        text: 'Hello, Jhon',
                        textColor: MyFoodAppColor.forgeTextColor,
                        fontSize: 14.sp,
                        fontWeightText: FontWeight.w600,
                      ).onlyPadding(top: 10.sp),
                      MyText(
                        text: 'Make your own food,',
                        textColor: MyFoodAppColor.whiteColor,
                        fontSize: 18.sp,
                        fontWeightText: FontWeight.w600,
                      ).onlyPadding(top: 5.sp),
                      Row(
                        children: [
                          MyText(
                            text: 'stay at ',
                            textColor: MyFoodAppColor.whiteColor,
                            fontSize: 18.sp,
                            fontWeightText: FontWeight.w600,
                          ),
                          MyText(
                            text: 'Home ',
                            textColor: MyFoodAppColor.yellowColor,
                            fontSize: 18.sp,
                            fontWeightText: FontWeight.w600,
                          ),
                        ],
                      ),
                    ],
                  ).onlyPadding(bottom: 50.sp, left: 40),
                  Column(
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.alarm,
                            color: MyFoodAppColor.whiteColor,
                            size: 25.sp,
                          ).onlyPadding(right: 10.sp),
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
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                      Icon(
                        Icons.search_rounded,
                        color: MyFoodAppColor.whiteColor,
                        size: 25.sp,
                      ).onlyPadding(top: 130.sp)
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Obx(
        () => GNav(
          backgroundColor: MyFoodAppColor.blackColor,
          activeColor: MyFoodAppColor.yellowColor,
          color: MyFoodAppColor.whiteColor,
          gap: 6,
          selectedIndex: controller.selectedIndex.value,
          onTabChange: (int index) {
            controller.selectedIndex.value = index;
            print(controller.selectedIndex.value);
            // if (controller.selectedIndex.value == 0) {
            // } else if (controller.selectedIndex.value == 1) {
            // } else if (controller.selectedIndex.value == 2) {
            //   Get.to(EditProfile());
            // }
          },
          tabs: [
            GButton(
              icon: Icons.home,
              text: 'Home',
            ),
            GButton(
              icon: Icons.favorite_border,
              text: 'Favourite',
            ),
            GButton(
              icon: Icons.manage_accounts_sharp,
              text: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}
