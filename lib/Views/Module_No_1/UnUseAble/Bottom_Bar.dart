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

class BottomBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    MyFoodAppController controller = Get.put(MyFoodAppController());
    return Scaffold(
      drawer: Drawer(),
      body: Column(
        children: [
          Container(
            color: MyFoodAppColor.appBarColor,
            height: 250,
            child: Column(
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
                          border: Border.all(color: MyFoodAppColor.greywColor),
                          borderRadius: BorderRadius.circular(50.sp)),
                    ),
                    Icon(
                      Icons.settings,
                      color: MyFoodAppColor.whiteColor,
                      size: 25.sp,
                    ).onlyPadding(left: 150.sp),
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
                ),
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
                MyContainer(
                  width: 30.sp,
                  height: 30.sp,
                  color: MyFoodAppColor.yellowColor,
                  borderRadius: BorderRadius.circular(7.sp),
                  containerWidget: Icon(
                    Icons.search_rounded,
                    color: MyFoodAppColor.whiteColor,
                    size: 22.sp,
                  ),
                ).onlyPadding(left: 310),
              ],
            ).onlyPadding(left: 20.sp, top: 20.sp),
          ).onlyPadding(top: 20.sp),
          SizedBox(
            height: 150.sp,
            width: double.infinity,
            child: ListView.builder(
              itemCount: 10,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return MyContainer(
                  width: 260.sp,
                  containerWidget: Stack(
                    children: [
                      Image.asset(
                          'assets/images/foodiesfeed.com_exotic-spices.jpg'),
                      MyContainer(
                        gradiant: LinearGradient(
                            colors: [
                              MyFoodAppColor.whiteColor.withOpacity(0.10),
                              MyFoodAppColor.blackColor.withOpacity(0.5),
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter),
                      ),
                      Positioned(
                        bottom: 15.sp,
                        left: 10.sp,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            MyText(
                              text: 'Beef Bihari Boti',
                              fontSize: 15.sp,
                              fontWeightText: FontWeight.w500,
                              textColor: MyFoodAppColor.whiteColor,
                            ),
                            MyText(
                              text: 'by Jacob Jones',
                              fontSize: 12.sp,
                              textColor: MyFoodAppColor.greywColor,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ).allPadding(all: 5.sp);
              },
            ),
          ),
          Expanded(
            child: GridView.builder(
              itemCount: 6,
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              itemBuilder: (context, index) {
                return MyContainer(
                  width: 100,
                  height: 100,
                  color: MyFoodAppColor.yellowColor,
                ).allPadding(all: 4);
              },
            ),
          )
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
