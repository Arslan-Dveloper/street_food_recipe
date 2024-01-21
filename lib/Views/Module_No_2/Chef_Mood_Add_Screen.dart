import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:street_food_recipe/Extension/Padding_Extension.dart';
import 'package:street_food_recipe/Helpers/constant.dart';
import 'package:street_food_recipe/MyCustomWidget/CustomWidget.dart';

class ChefMoodAddScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverAppBar(
            backgroundColor: MyFoodAppColor.appBarColor,
            expandedHeight: 200.sp,
            flexibleSpace: FlexibleSpaceBar(
              background: Column(
                children: [
                  Image.asset('assets/images/icon 2.png'),
                  MyText(
                    text: 'upload image',
                    fontSize: 15.sp,
                    textColor: MyFoodAppColor.whiteColor,
                    fontWeightText: FontWeight.w600,
                  ).onlyPadding(top: 10.sp),
                  MyText(
                    text: '360x225',
                    fontSize: 15.sp,
                    textColor: MyFoodAppColor.yellowColor,
                    fontWeightText: FontWeight.w600,
                  )
                ],
              ).onlyPadding(top: 50.sp),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MyText(
                  text: 'Recipe Title',
                  fontSize: 13.sp,
                  textColor: MyFoodAppColor.pureGreyColor,
                  fontWeightText: FontWeight.w600,
                ).onlyPadding(top: 10.sp),
                MyTextField(
                  hintText: 'Enter Recipe Title',
                  hintFontSize: 11.sp,
                  fillColor: MyFoodAppColor.pureWhiteColor,
                  offset: Offset(0, 0),
                  blurRadius: 0,
                  spreadRadius: 0,
                  containerShadowColor: Colors.transparent,
                  borderSideColor: MyFoodAppColor.yellowColor,
                  borderRadiusField: BorderRadius.circular(12.sp),
                  contectPadding: EdgeInsets.only(left: 15.sp),
                  widthTextField: 270.sp,
                ).onlyPadding(top: 5.sp),
                MyText(
                  text: 'Estimated Time',
                  fontSize: 13.sp,
                  textColor: MyFoodAppColor.pureGreyColor,
                  fontWeightText: FontWeight.w600,
                ).onlyPadding(top: 10.sp),
                MyTextField(
                  hintText: 'Enter Time also mention hours or minutes',
                  hintTextColor: MyFoodAppColor.forgeTextColor,
                  hintFontSize: 11.sp,
                  fillColor: MyFoodAppColor.pureWhiteColor,
                  offset: Offset(0, 0),
                  blurRadius: 0,
                  spreadRadius: 0,
                  containerShadowColor: Colors.transparent,
                  borderSideColor: MyFoodAppColor.yellowColor,
                  borderRadiusField: BorderRadius.circular(12.sp),
                  contectPadding: EdgeInsets.only(left: 15.sp),
                  widthTextField: 270.sp,
                ).onlyPadding(top: 5.sp),
                MyTextField(
                  hintText: 'Select Category',
                  hintTextColor: MyFoodAppColor.forgeTextColor,
                  hintFontSize: 11.sp,
                  fillColor: MyFoodAppColor.pureWhiteColor,
                  offset: Offset(0, 0),
                  blurRadius: 0,
                  spreadRadius: 0,
                  containerShadowColor: Colors.transparent,
                  borderSideColor: MyFoodAppColor.yellowColor,
                  borderRadiusField: BorderRadius.circular(12.sp),
                  contectPadding: EdgeInsets.only(left: 15.sp),
                  widthTextField: 270.sp,
                ).onlyPadding(top: 15.sp),
                MyText(
                  text: 'Please Enter ingredient for one plate',
                  fontSize: 13.sp,
                  textColor: MyFoodAppColor.yellowColor,
                ).onlyPadding(top: 20.sp),
                MyText(
                  text: 'Ingrediants:',
                  fontSize: 13.sp,
                  textColor: MyFoodAppColor.pureGreyColor,
                  fontWeightText: FontWeight.w600,
                ).onlyPadding(top: 20.sp,left: 15.sp),
                MyContainer(
                  width: 270.sp,
                  height: 250.sp,
                  color: MyFoodAppColor.pureWhiteColor,
                  border: Border.all(
                      color: MyFoodAppColor.yellowColor, width: 1.sp),
                  borderRadius: BorderRadius.circular(10.sp),
                  containerWidget: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 240.sp,
                        height: 35.sp,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.sp),
                          color: MyFoodAppColor.whiteColor,
                          boxShadow: [
                            BoxShadow(
                                color: MyFoodAppColor.pureShadowColor,
                                blurRadius: 15.sp,
                                spreadRadius: 2.sp,
                                offset: Offset(1, 0))
                          ],
                        ),
                        child: MyText(
                          text: 'Enter Ingredient name',
                          textColor: MyFoodAppColor.pureGreyColor,
                          fontSize: 11.sp,
                          fontWeightText: FontWeight.w600,
                        ).onlyPadding(top: 9.sp, left: 15.sp),
                      ).onlyPadding(left: 15.sp, top: 30.sp),
                      Row(
                        children: [
                          Container(
                            width: 150.sp,
                            height: 35.sp,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30.sp),
                              color: MyFoodAppColor.whiteColor,
                              boxShadow: [
                                BoxShadow(
                                    color: MyFoodAppColor.pureShadowColor,
                                    blurRadius: 15.sp,
                                    spreadRadius: 2.sp,
                                    offset: Offset(1, 0))
                              ],
                            ),
                            child: MyText(
                              textAlign: TextAlign.center,
                              text: 'Enter Ingredient name',
                              textColor: MyFoodAppColor.pureGreyColor,
                              fontSize: 11.sp,
                              fontWeightText: FontWeight.w600,
                            ).onlyPadding(top: 9.sp),
                          ),
                          Container(
                            width: 80.sp,
                            height: 35.sp,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30.sp),
                              color: MyFoodAppColor.whiteColor,
                              boxShadow: [
                                BoxShadow(
                                    color: MyFoodAppColor.pureShadowColor,
                                    blurRadius: 15.sp,
                                    spreadRadius: 2.sp,
                                    offset: Offset(0, 2))
                              ],
                            ),
                            child: MyText(
                              textAlign: TextAlign.center,
                              text: 'Quality',
                              textColor: MyFoodAppColor.pureGreyColor,
                              fontSize: 11.sp,
                              fontWeightText: FontWeight.w600,
                            ).onlyPadding(top: 9.sp),
                          ).onlyPadding(left: 10.sp),
                        ],
                      ).onlyPadding(top: 25.sp, left: 15.sp),
                      Row(
                        children: [
                          MyContainer(
                            width: 90.sp,
                            height: 35.sp,
                            color: MyFoodAppColor.blackColor,
                            borderRadius: BorderRadius.circular(30.sp),
                            containerWidget: MyText(
                              text: 'ADD',
                              fontSize: 14.sp,
                              fontWeightText: FontWeight.w600,
                              textAlign: TextAlign.center,
                              textColor: MyFoodAppColor.yellowColor,
                            ).onlyPadding(top: 6.sp),
                          ),
                          MyContainer(
                            width: 90.sp,
                            height: 35.sp,
                            color: MyFoodAppColor.blackColor,
                            borderRadius: BorderRadius.circular(30.sp),
                            containerWidget: MyText(
                              text: 'DONE',
                              fontSize: 14.sp,
                              fontWeightText: FontWeight.w600,
                              textAlign: TextAlign.center,
                              textColor: MyFoodAppColor.yellowColor,
                            ).onlyPadding(top: 6.sp),
                          ).onlyPadding(left: 25.sp)
                        ],
                      ).onlyPadding(left: 35.sp, top: 50.sp)
                    ],
                  ),
                ).onlyPadding(top: 5.sp,),
                MyContainer(
                  width: 255.sp,
                  height: 40.sp,
                  color: MyFoodAppColor.blackColor,
                  borderRadius: BorderRadius.circular(15.sp),
                  containerWidget: MyText(
                    text: 'Description in English',
                    fontSize: 12.sp,
                    textColor: MyFoodAppColor.yellowColor,
                    fontWeightText: FontWeight.w700,
                  ).onlyPadding(top: 10.sp, left: 15.sp),
                ).onlyPadding(top: 20.sp,left: 10.sp),
                MyContainer(
                  width: 250.sp,
                  height: 200.sp,
                  color: MyFoodAppColor.pureWhiteColor,
                  borderRadius: BorderRadius.circular(10.sp),
                  containerWidget: MyText(
                    text: '''Enter Description... Please make a 
paragrapgh of each recipe or give point ''',
                    textColor: MyFoodAppColor.pureGreyColor,
                    fontSize: 11.sp,
                  ).onlyPadding(left: 5.sp, top: 15.sp),
                ).onlyPadding(left: 12.sp,),
                MyContainer(
                  width: 255.sp,
                  height: 40.sp,
                  color: MyFoodAppColor.blackColor,
                  borderRadius: BorderRadius.circular(15.sp),
                  containerWidget: Row(
                    children: [
                      MyText(
                        text: 'Description in Urdu',
                        fontSize: 12.sp,
                        textColor: MyFoodAppColor.yellowColor,
                        fontWeightText: FontWeight.w700,
                      ).onlyPadding(left: 15.sp),
                      MyText(
                        text: 'NO',
                        fontSize: 12.sp,
                        textColor: MyFoodAppColor.whiteColor,
                        fontWeightText: FontWeight.w700,
                      ).onlyPadding(left: 80.sp),
                    ],
                  ),
                ).onlyPadding(top: 20.sp,left: 5.sp),
                Row(
                  children: [
                    MyContainer(
                      width: 100.sp,
                      height: 30.sp,
                      color: MyFoodAppColor.yellowColor,
                      borderRadius: BorderRadius.circular(15.sp),
                      containerWidget: MyText(
                        text: 'Preview',
                        fontSize: 12.sp,
                        fontWeightText: FontWeight.bold,textAlign: TextAlign.center,
                      ).onlyPadding(top: 7.sp),
                    ),
                    MyContainer(
                      width: 100.sp,
                      height: 30.sp,
                      color: MyFoodAppColor.blackColor,
                      borderRadius: BorderRadius.circular(15.sp),
                      containerWidget: MyText(textColor: MyFoodAppColor.yellowColor,
                        text: 'UPDATE',
                        fontSize: 12.sp,
                        fontWeightText: FontWeight.bold,textAlign: TextAlign.center,
                      ).onlyPadding(top: 7.sp),
                    ).onlyPadding(left: 20.sp)
                  ],
                ).onlyPadding(top: 30.sp,left: 20.sp,bottom: 30.sp)
              ],
            ).onlyPadding(left: 15.sp),
          )
        ],
      ),
    );
  }
}
