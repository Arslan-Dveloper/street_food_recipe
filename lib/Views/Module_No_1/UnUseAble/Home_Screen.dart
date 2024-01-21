import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:sizer/sizer.dart';
import 'package:street_food_recipe/Controller/Controller_File.dart';
import 'package:street_food_recipe/Extension/Padding_Extension.dart';
import 'package:street_food_recipe/Helpers/constant.dart';
import 'package:street_food_recipe/MyCustomWidget/CustomWidget.dart';
import 'package:street_food_recipe/Views/Module_No_1/Screens/Setting.dart';

class HomeScreen extends StatelessWidget {
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
                          width: 2.sp, color: MyFoodAppColor.greyColor),
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
              color: MyFoodAppColor.greyColor,
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
        slivers: [
          SliverAppBar(
            backgroundColor: MyFoodAppColor.appBarColor,
            expandedHeight: 220.sp,
            flexibleSpace: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                children: [
                  Column(
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
                                border: Border.all(
                                    color: MyFoodAppColor.greyColor),
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
                        textColor: MyFoodAppColor.greyColor,
                        fontSize: 12.sp,
                      ).onlyPadding(top: 15.sp),
                      MyText(
                        text: 'Make your own food,',
                        textColor: MyFoodAppColor.greyColor,
                        fontSize: 15.sp,
                        fontWeightText: FontWeight.w500,
                      ),
                      Row(
                        children: [
                          MyText(
                            text: 'stay at',
                            textColor: MyFoodAppColor.greyColor,
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
                      ).onlyPadding(left: 230.sp),
                    ],
                  )
                      .onlyPadding(left: 20.sp, top: 20.sp)
                      .onlyPadding(top: 20.sp),
                ],
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => Container(
                height: 50,
                decoration: BoxDecoration(color: MyFoodAppColor.yellowColor),
              ).allPadding(all: 10.sp),
              childCount: 10,
            ),
          ),
          SliverGrid(
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                childAspectRatio: 4, maxCrossAxisExtent: 10),
            delegate: SliverChildBuilderDelegate((context, index) => Container(
                  width: 100,
                  height: 100,
                  color: MyFoodAppColor.yellowColor,
                ).allPadding(all: 5)),
          )
        ],
      ),
      // body: SingleChildScrollView(
      //   child: Column(
      //     crossAxisAlignment: CrossAxisAlignment.start,
      //     children: [
      //       Container(
      //         color: MyFoodAppColor.blackColor,
      //         child: Column(
      //           children: [
      //             Column(
      //               crossAxisAlignment: CrossAxisAlignment.start,
      //               children: [
      //                 Row(
      //                   children: [
      //                     Container(
      //                       width: 80,
      //                       height: 80,
      //                       child: Image.asset('assets/images/Ellipse 2.png')
      //                           .allPadding(all: 4.sp),
      //                       decoration: BoxDecoration(
      //                           border: Border.all(
      //                               color: MyFoodAppColor.greywColor),
      //                           borderRadius: BorderRadius.circular(50.sp)),
      //                     ),
      //                     Icon(
      //                       Icons.settings,
      //                       color: MyFoodAppColor.whiteColor,
      //                       size: 25.sp,
      //                     ).onlyPadding(left: 150.sp),
      //                     Builder(
      //                       builder: (context) {
      //                         return GestureDetector(
      //                           onTap: () {
      //                             Scaffold.of(context).openDrawer();
      //                           },
      //                           child: Icon(
      //                             Icons.menu,
      //                             color: MyFoodAppColor.whiteColor,
      //                             size: 25.sp,
      //                           ).onlyPadding(left: 4.sp),
      //                         );
      //                       },
      //                     )
      //                   ],
      //                 ),
      //                 MyText(
      //                   text: 'Hello, John',
      //                   textColor: MyFoodAppColor.greywColor,
      //                   fontSize: 12.sp,
      //                 ).onlyPadding(top: 15.sp),
      //                 MyText(
      //                   text: 'Make your own food,',
      //                   textColor: MyFoodAppColor.greywColor,
      //                   fontSize: 15.sp,
      //                   fontWeightText: FontWeight.w500,
      //                 ),
      //                 Row(
      //                   children: [
      //                     MyText(
      //                       text: 'stay at',
      //                       textColor: MyFoodAppColor.greywColor,
      //                       fontSize: 15.sp,
      //                       fontWeightText: FontWeight.w500,
      //                     ),
      //                     MyText(
      //                       text: ' Home,',
      //                       textColor: MyFoodAppColor.yellowColor,
      //                       fontSize: 15.sp,
      //                       fontWeightText: FontWeight.w600,
      //                     )
      //                   ],
      //                 ),
      //                 MyContainer(
      //                   width: 30.sp,
      //                   height: 30.sp,
      //                   color: MyFoodAppColor.yellowColor,
      //                   borderRadius: BorderRadius.circular(7.sp),
      //                   containerWidget: Icon(
      //                     Icons.search_rounded,
      //                     color: MyFoodAppColor.whiteColor,
      //                     size: 22.sp,
      //                   ),
      //                 ).onlyPadding(left: 230.sp),
      //               ],
      //             )
      //                 .onlyPadding(left: 20.sp, top: 20.sp)
      //                 .onlyPadding(top: 20.sp),
      //           ],
      //         ),
      //       ),
      //       MyText(
      //         text: 'Feature Recipe',
      //         fontSize: 16.sp,
      //       ),
      //       SizedBox(
      //         height: 140.sp,
      //         width: MediaQuery.of(context).size.width,
      //         child: PageView.builder(
      //           controller: controller.pageControllerOne,
      //           physics: BouncingScrollPhysics(),
      //           itemCount: 4,
      //           itemBuilder: (context, index) {
      //             return MyContainer(
      //               borderRadius: BorderRadius.circular(25.sp),
      //               containerWidget: Image.asset(
      //                   'assets/images/foodiesfeed.com_exotic-spices.jpg'),
      //               myClip: Clip.antiAlias,
      //               gradiant: LinearGradient(colors: [
      //                 MyFoodAppColor.whiteColor.withOpacity(0.7),
      //                 MyFoodAppColor.blackColor,
      //               ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
      //             ).allPadding(all: 5.sp);
      //           },
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
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


