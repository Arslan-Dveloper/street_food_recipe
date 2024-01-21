import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:street_food_recipe/Extension/Padding_Extension.dart';
import 'package:street_food_recipe/Helpers/constant.dart';
import 'package:street_food_recipe/MyCustomWidget/CustomWidget.dart';

class FavouriteRecipes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back_ios,
          size: 16.sp,
        ),
        title: MyText(
          text: 'Favourite Recipe',
          fontSize: 13.sp,
          fontWeightText: FontWeight.w600,
        ),
        centerTitle: true,
        shape: Border(
          bottom: BorderSide(color: MyFoodAppColor.greyColor),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MyText(
                  text: 'Desserts',
                  fontSize: 16.sp,
                  fontWeightText: FontWeight.w700,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.arrow_back_ios,
                      size: 15.sp,
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 15.sp,
                    ),
                  ],
                )
              ],
            ).symmetricPadding(horizontal: 7.sp),
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return MyContainer(
                    containerWidget: Image.asset('assets/images/Burger.png'),
                  );
                },
              ),
            ),
            Divider(color: MyFoodAppColor.greyColor),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MyText(
                  text: 'BBQ',
                  fontSize: 16.sp,
                  fontWeightText: FontWeight.w700,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.arrow_back_ios,
                      size: 15.sp,
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 15.sp,
                    ),
                  ],
                )
              ],
            ).symmetricPadding(horizontal: 7.sp),
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return MyContainer(
                    containerWidget: Image.asset('assets/images/Burger.png'),
                  );
                },
              ),
            ),
            Divider(color: MyFoodAppColor.greyColor),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MyText(
                  text: 'BBQ',
                  fontSize: 16.sp,
                  fontWeightText: FontWeight.w700,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.arrow_back_ios,
                      size: 15.sp,
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 15.sp,
                    ),
                  ],
                )
              ],
            ).symmetricPadding(horizontal: 7.sp),
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return MyContainer(
                    containerWidget: Image.asset('assets/images/Burger.png'),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
