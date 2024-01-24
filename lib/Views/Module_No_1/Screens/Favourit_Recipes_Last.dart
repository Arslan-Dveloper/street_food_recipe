import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:street_food_recipe/Controller/Controller_File.dart';
import 'package:street_food_recipe/Extension/Padding_Extension.dart';
import 'package:street_food_recipe/Helpers/constant.dart';
import 'package:street_food_recipe/MyCustomWidget/CustomWidget.dart';
import 'package:street_food_recipe/Views/Module_No_1/Screens/Complete_Detail_Screen.dart';
import 'package:timelines/timelines.dart';

class MyFavouriteRecipes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MyFoodAppController controller = Get.put(MyFoodAppController());
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: MyText(
              text: 'Crispy Beef Burger',
              fontSize: 18.sp,
              fontWeightText: FontWeight.w600,
              textColor: MyFoodAppColor.whiteColor,
            ),
            centerTitle: true,
            expandedHeight: 250.sp,
            automaticallyImplyLeading: false,
            leading: GestureDetector(
              onTap: () {
                Get.back();
              },
              child: Icon(
                Icons.arrow_back_ios,
                color: MyFoodAppColor.whiteColor,
              ),
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(20),
              child: Stack(
                children: [
                  MyContainer(
                    height: 40.sp,
                    color: MyFoodAppColor.whiteColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15.sp),
                      topRight: Radius.circular(15.sp),
                    ),
                  ),
                  MyContainer(
                    width: 70.sp,
                    height: 8.sp,
                    color: MyFoodAppColor.yellowColor,
                    borderRadius: BorderRadius.circular(7.sp),
                  ).onlyPadding(left: 120.sp, top: 8.sp)
                ],
              ),
            ),
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'assets/images/Favourit.png',
                width: double.maxFinite,
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
                            textColor: MyFoodAppColor.greyColor,
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
                        textColor: MyFoodAppColor.greyColor,
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
                              MyFoodAppColor.greyColor.withOpacity(0.9),
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
                              MyFoodAppColor.greyColor.withOpacity(0.9),
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
                  SizedBox(
                    child: FixedTimeline.tileBuilder(
                      builder: TimelineTileBuilder.connectedFromStyle(
                        connectionDirection: ConnectionDirection.before,
                        connectorStyleBuilder: (context, index) {
                          return ConnectorStyle.solidLine;
                        },
                        indicatorStyleBuilder: (context, index) {
                          return IndicatorStyle.dot;
                        },
                        itemCount: 5,
                        itemExtent: 30.sp,
                        contentsBuilder: (context, index) {
                          return MyText(
                            text: 'Arslan',
                          );
                        },
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(DetailedScreen());
                    },
                    child: MyContainer(
                      height: 40.sp,
                      width: 150.sp,
                      borderRadius: BorderRadius.circular(30.sp),
                      color: MyFoodAppColor.yellowColor,
                      containerWidget: MyText(
                        textAlign: TextAlign.center,
                        text: 'Complete Details',
                        fontSize: 14.sp,
                        fontWeightText: FontWeight.w800,
                        textColor: MyFoodAppColor.whiteColor,
                      ).onlyPadding(top: 8.sp),
                    ).onlyPadding(top: 200.sp, left: 65.sp),
                  )
                ],
              ),
            ).symmetricPadding(horizontal: 8.sp),
          )
        ],
      ),
    );
  }
}
