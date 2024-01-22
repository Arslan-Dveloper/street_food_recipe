import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:sizer/sizer.dart';
import 'package:street_food_recipe/Controller/Controller_Module_Two.dart';
import 'package:street_food_recipe/Extension/Padding_Extension.dart';
import 'package:street_food_recipe/Helpers/constant.dart';
import 'package:street_food_recipe/Views/Module_No_2/Chef_Mood_Edit_Profile.dart';
import 'package:street_food_recipe/Views/Module_No_2/Chef_Mood_Home_Screen.dart';
import 'package:street_food_recipe/Views/Module_No_2/Select_Language.dart';

class HomeScreenTwo extends StatelessWidget {
  List<Widget> _layoutScreens = [
    ChefMoodHomeScreen(),
    SelectLanguage(),
    ChefMoodEditProfile(),
  ];

  @override
  Widget build(BuildContext context) {
    MyFoodAppControllerModuleTwo controller =
        Get.put(MyFoodAppControllerModuleTwo());
    return Scaffold(
      body: Obx(() => _layoutScreens[controller.selectedIndexModule.value]),
      bottomNavigationBar: Container(
        color: MyFoodAppColor.blackColor,
        child: GNav(
          onTabChange: (value) {
            controller.selectedIndexModule.value = value;
          },
          backgroundColor: MyFoodAppColor.blackColor,
          activeColor: MyFoodAppColor.whiteColor,
          color: MyFoodAppColor.greyColor,
          gap: 5.sp,
          tabBackgroundColor: MyFoodAppColor.greyColor.withOpacity(0.5),
          padding: EdgeInsets.all(8.sp),
          tabs: [
            GButton(
              icon: Icons.home,
              text: 'Home',
            ),
            GButton(
              icon: Icons.add,
              text: 'Add',
            ),
            GButton(
              icon: Icons.person,
              text: 'Profile',
            ),
          ],
        ).symmetricPadding(horizontal: 15.sp, vertical: 20.sp),
      ),
    );
  }
}
