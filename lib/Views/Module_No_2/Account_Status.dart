import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:street_food_recipe/Extension/Padding_Extension.dart';
import 'package:street_food_recipe/Helpers/constant.dart';
import 'package:street_food_recipe/MyCustomWidget/CustomWidget.dart';

class AccountStatusScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //shape: Border(bottom: BorderSide(color: MyFoodAppColor.forgetColor)),
        leading: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: Icon(
            Icons.arrow_back_ios_sharp,
            size: 16.sp,
          ),
        ),
        title: MyText(
          text: 'Account Status',
          fontSize: 14.sp,
          fontWeightText: FontWeight.w600,
        ),
        centerTitle: true,
      ),
      body: DefaultTabController(
        length: 3,
        child: Column(
          children: [
            Material(
              child: MyContainer(
                height: 30.sp,
                color: MyFoodAppColor.whiteColor,
                containerWidget: TabBar(
                  labelColor: MyFoodAppColor.whiteColor,
                  physics: ClampingScrollPhysics(),
                  unselectedLabelColor: MyFoodAppColor.greyColor,
                  indicatorSize: TabBarIndicatorSize.label,
                  indicator: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.sp),
                      color: MyFoodAppColor.yellowColor),
                  tabs: [
                    Tab(
                      child: MyContainer(
                        height: 30.sp,
                        width: 100.sp,
                        borderRadius: BorderRadius.circular(30.sp),
                        border: Border.all(color: MyFoodAppColor.yellowColor),
                        containerWidget: Align(
                          alignment: Alignment.center,
                          child: MyText(
                            text: 'Approved',
                            fontSize: 16.sp,
                            fontWeightText: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                    Tab(
                      child: MyContainer(
                        height: 30.sp,
                        width: 150.sp,
                        borderRadius: BorderRadius.circular(30.sp),
                        border: Border.all(color: MyFoodAppColor.yellowColor),
                        containerWidget: Align(
                          alignment: Alignment.center,
                          child: MyText(
                            text: 'Pending',
                            fontSize: 16.sp,
                            fontWeightText: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                    Tab(
                      child: MyContainer(
                        height: 30.sp,
                        width: 100.sp,
                        borderRadius: BorderRadius.circular(30.sp),
                        border: Border.all(color: MyFoodAppColor.yellowColor),
                        containerWidget: Align(
                          alignment: Alignment.center,
                          child: MyText(
                            text: 'Decline',
                            fontSize: 16.sp,
                            fontWeightText: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  SizedBox(
                    child: GridView.builder(
                      itemCount: 10,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 1),
                      itemBuilder: (context, index) {
                        return MyContainer(
                         containerWidget: Image.asset('assets/images/Burger.png'),
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    child: GridView.builder(
                      itemCount: 10,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 1),
                      itemBuilder: (context, index) {
                        return MyContainer(
                          containerWidget: Image.asset('assets/images/Burger.png'),
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    child: GridView.builder(
                      itemCount: 10,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 1),
                      itemBuilder: (context, index) {
                        return MyContainer(
                          containerWidget: Image.asset('assets/images/Burger.png'),
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
