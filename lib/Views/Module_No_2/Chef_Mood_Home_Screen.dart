import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:street_food_recipe/Controller/Controller_Module_Two.dart';
import 'package:street_food_recipe/Extension/Padding_Extension.dart';
import 'package:street_food_recipe/Helpers/constant.dart';
import 'package:street_food_recipe/MyCustomWidget/CustomWidget.dart';
import 'package:street_food_recipe/Views/Module_No_2/Notification_Module_Two.dart';

class ChefMoodHomeScreen extends StatelessWidget {
  const ChefMoodHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    MyFoodAppControllerModuleTwo controller =
        Get.put(MyFoodAppControllerModuleTwo());
    return Scaffold(
      drawer: Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                MyContainer(
                  width: 70.sp,
                  height: 70.sp,
                  borderRadius: BorderRadius.circular(50.sp),
                  border: Border.all(color: MyFoodAppColor.greyColor, width: 2),
                  containerWidget: Image.asset('assets/images/man AppBar.png')
                      .allPadding(all: 3.sp),
                ),
                Obx(
                  () => Switch(
                    value: controller.switchValue.value,
                    onChanged: (value) {
                      controller.switchValue.value =
                          !controller.switchValue.value;
                      value = controller.switchValue.value;
                    },
                    activeColor: MyFoodAppColor.greyColor,
                  ).onlyPadding(left: 60.sp),
                ),
              ],
            ).onlyPadding(top: 20.sp, left: 20.sp),
            MyText(
              text: 'ABDUL HANNAN',
              fontSize: 14.sp,
              fontWeightText: FontWeight.w900,
            ).onlyPadding(left: 20.sp, top: 10.sp),
            MyTextField(
              hintText: 'abc@gmail.com',
              fillColor: Colors.transparent,
              borderSideColor: Colors.transparent,
              offset: Offset(0, 0),
              blurRadius: 0,
              spreadRadius: 0,
              containerShadowColor: Colors.transparent,
              contectPadding: EdgeInsets.only(
                left: 0,
              ),
              widthTextField: 200.sp,
              hintTextColor: MyFoodAppColor.greyColor,
            ).onlyPadding(left: 20.sp),
            Divider(
              color: MyFoodAppColor.forgeTextColor,
            ),
            MyContainerShadow(
              height: 40.sp,
              width: 200.sp,
              widget: Row(
                children: [
                  Image.asset('assets/images/icon.person.png')
                      .onlyPadding(left: 5.sp),
                  MyText(
                    text: 'Account Status',
                    fontSize: 14.sp,
                  ).onlyPadding(left: 20.sp),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: MyFoodAppColor.yellowColor,
                    size: 16.sp,
                  ).onlyPadding(left: 25.sp)
                ],
              ),
            ).onlyPadding(top: 20.sp, left: 10.sp),
            MyContainerShadow(
              height: 40.sp,
              width: 200.sp,
              widget: Row(
                children: [
                  Image.asset('assets/images/Icon.favourit.png')
                      .onlyPadding(left: 5.sp),
                  MyText(
                    text: 'Favourite',
                    fontSize: 14.sp,
                  ).onlyPadding(left: 20.sp),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: MyFoodAppColor.yellowColor,
                    size: 16.sp,
                  ).onlyPadding(left: 65.sp)
                ],
              ),
            ).onlyPadding(top: 10.sp, left: 10.sp),
            MyContainerShadow(
              height: 40.sp,
              width: 200.sp,
              widget: Row(
                children: [
                  Image.asset('assets/images/icon.setting.png')
                      .onlyPadding(left: 5.sp),
                  MyText(
                    text: 'Setting',
                    fontSize: 14.sp,
                  ).onlyPadding(left: 20.sp),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: MyFoodAppColor.yellowColor,
                    size: 16.sp,
                  ).onlyPadding(left: 85.sp)
                ],
              ),
            ).onlyPadding(top: 10.sp, left: 10.sp),
            MyContainerShadow(
              height: 40.sp,
              width: 200.sp,
              widget: Row(
                children: [
                  Image.asset('assets/images/icon.arrow.farward.png')
                      .onlyPadding(left: 5.sp),
                  MyText(
                    text: 'Log Out',
                    fontSize: 14.sp,
                  ).onlyPadding(left: 20.sp),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: MyFoodAppColor.yellowColor,
                    size: 16.sp,
                  ).onlyPadding(left: 80.sp)
                ],
              ),
            ).onlyPadding(top: 10.sp, left: 10.sp),
          ],
        ),
      ),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            automaticallyImplyLeading: false,
            expandedHeight: 230.sp,
            backgroundColor: MyFoodAppColor.appBarColor,
            flexibleSpace: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    MyContainer(
                      width: 70.sp,
                      height: 70.sp,
                      borderRadius: BorderRadius.circular(50.sp),
                      border: Border.all(
                        width: 2,
                        color: MyFoodAppColor.greyColor,
                      ),
                      containerWidget:
                          Image.asset('assets/images/Ellipse 2.png')
                              .allPadding(all: 3.sp),
                    ),
                    GestureDetector(
                      onTap: (){
                        Get.to(NotificationScreen());
                      },
                      child: Icon(
                        Icons.notifications_active,
                        color: MyFoodAppColor.whiteColor,
                        size: 24.sp,
                      ).onlyPadding(left: 130.sp),
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
                            size: 24.sp,
                          ).onlyPadding(left: 8.sp),
                        );
                      },
                    )
                  ],
                ),
                MyText(
                  text: 'Hello, Jhon',
                  textColor: MyFoodAppColor.forgeTextColor,
                  fontSize: 12.sp,
                ).onlyPadding(top: 10.sp),
                MyText(
                  text: 'Make your own food,',
                  textColor: MyFoodAppColor.whiteColor,
                  fontSize: 16.sp,
                  fontWeightText: FontWeight.w600,
                ).onlyPadding(top: 10.sp),
                RichText(
                  text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text: 'stay at ',
                        style: TextStyle(
                            color: MyFoodAppColor.whiteColor,
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w600),
                      ),
                      TextSpan(
                        text: 'Home ',
                        style: TextStyle(
                            color: MyFoodAppColor.yellowColor,
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                ),
                MyContainer(
                  width: 25.sp,
                  height: 25.sp,
                  color: MyFoodAppColor.yellowColor,
                  borderRadius: BorderRadius.circular(5.sp),
                  containerWidget: Image.asset(
                    'assets/images/icon.search.png',
                    scale: 1.3.sp,
                  ),
                ).onlyPadding(left: 230.sp)
              ],
            ).onlyPadding(left: 15.sp, top: 50.sp),
          ),
        ],
      ),
    );
  }
}
