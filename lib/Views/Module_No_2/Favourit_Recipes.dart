import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:street_food_recipe/Extension/Padding_Extension.dart';
import 'package:street_food_recipe/Helpers/constant.dart';
import 'package:street_food_recipe/MyCustomWidget/CustomWidget.dart';

class FavouriteRecipesModuleTwo extends StatelessWidget {
  const FavouriteRecipesModuleTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: GestureDetector(
          onTap: (){
            Get.back();
          },
          child: Icon(
            Icons.arrow_back_ios_sharp,
            size: 16.sp,
          ),
        ),
        title: MyText(
          text: 'Favourite Recipe',
          fontSize: 14.sp,
          fontWeightText: FontWeight.w600,
        ),
        centerTitle: true,
        shape: Border(
          bottom: BorderSide(color: MyFoodAppColor.greyColor),
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MyText(
              text: 'Desserts',
              fontSize: 14.sp,
              fontWeightText: FontWeight.w600,
            ).onlyPadding(left: 10.sp),
            Expanded(
              child: ListView.builder(
                itemCount: 4,
                scrollDirection: Axis.horizontal,
                //shrinkWrap: true,
                itemBuilder: (context, index) {
                  return MyContainer(
                    height: 80.sp,
                    containerWidget: Image.asset('assets/images/Burger.png'),
                  );
                },
              ),
            ),
            Divider(
              thickness: 2,
              color: MyFoodAppColor.greyColor,
            ),
            MyText(
              text: 'BBQ',
              fontSize: 14.sp,
              fontWeightText: FontWeight.w600,
            ).onlyPadding(left: 10.sp),
            Expanded(
              child: ListView.builder(
                itemCount: 4,
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return MyContainer(
                    height: 80.sp,
                    containerWidget: Image.asset('assets/images/Burger.png'),
                  );
                },
              ),
            ),
            Divider(
              thickness: 2,
              color: MyFoodAppColor.greyColor,
            ),
            MyText(
              text: 'BBQ',
              fontSize: 14.sp,
              fontWeightText: FontWeight.w600,
            ).onlyPadding(left: 10.sp),
            Expanded(
              child: ListView.builder(
                itemCount: 4,
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return MyContainer(
                    height: 80.sp,
                    containerWidget: Image.asset('assets/images/Burger.png'),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
