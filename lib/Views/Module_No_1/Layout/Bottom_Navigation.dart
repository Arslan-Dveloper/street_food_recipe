import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:street_food_recipe/Controller/Controller_File.dart';
import 'package:street_food_recipe/Helpers/constant.dart';
import 'package:street_food_recipe/Views/Module_No_1/Screens/Eidt_Profile.dart';
import 'package:street_food_recipe/Views/Module_No_1/Screens/Favourit_Recipes.dart';
import 'package:street_food_recipe/Views/Module_No_1/Screens/HomeScreen.dart';

class BottomNavigation extends StatelessWidget {
  List<Widget> _layOut = [
    HomeLayout(),
    FavouriteRecipes(),
    EditProfile(),
  ];

  @override
  Widget build(BuildContext context) {
    MyFoodAppController controller = Get.put(MyFoodAppController());
    return Scaffold(
      body: Obx(
        () => _layOut[controller.selectedIndex.value],
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
