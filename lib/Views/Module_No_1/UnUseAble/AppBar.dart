import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:street_food_recipe/Extension/Padding_Extension.dart';
import 'package:street_food_recipe/Helpers/constant.dart';
import 'package:street_food_recipe/MyCustomWidget/CustomWidget.dart';

class MyAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: Column(
      //   children: [
      //     Container(
      //       color: MyFoodAppColor.appBarColor,
      //       height: 250,
      //       child: Column(
      //         crossAxisAlignment: CrossAxisAlignment.start,
      //         children: [
      //           Row(
      //             children: [
      //               Container(
      //                 width: 80,
      //                 height: 80,
      //                 child: Image.asset('assets/images/Ellipse 2.png')
      //                     .allPadding(all: 4.sp),
      //                 decoration: BoxDecoration(
      //                     border: Border.all(color: MyFoodAppColor.greywColor),
      //                     borderRadius: BorderRadius.circular(50.sp)),
      //               ),
      //               Icon(
      //                 Icons.settings,
      //                 color: MyFoodAppColor.whiteColor,
      //                 size: 25.sp,
      //               ).onlyPadding(left: 150.sp),
      //               Builder(
      //                 builder: (context) {
      //                   return GestureDetector(
      //                     onTap: () {
      //                       Scaffold.of(context).openDrawer();
      //                     },
      //                     child: Icon(
      //                       Icons.menu,
      //                       color: MyFoodAppColor.whiteColor,
      //                       size: 25.sp,
      //                     ).onlyPadding(left: 4.sp),
      //                   );
      //                 },
      //               )
      //             ],
      //           ),
      //           MyText(
      //             text: 'Hello, John',
      //             textColor: MyFoodAppColor.greywColor,
      //             fontSize: 12.sp,
      //           ),
      //           MyText(
      //             text: 'Make your own food,',
      //             textColor: MyFoodAppColor.greywColor,
      //             fontSize: 15.sp,
      //             fontWeightText: FontWeight.w500,
      //           ),
      //           Row(
      //             children: [
      //               MyText(
      //                 text: 'stay at',
      //                 textColor: MyFoodAppColor.greywColor,
      //                 fontSize: 15.sp,
      //                 fontWeightText: FontWeight.w500,
      //               ),
      //               MyText(
      //                 text: ' Home,',
      //                 textColor: MyFoodAppColor.yellowColor,
      //                 fontSize: 15.sp,
      //                 fontWeightText: FontWeight.w600,
      //               )
      //             ],
      //           ),
      //           MyContainer(
      //             width: 30.sp,
      //             height: 30.sp,
      //             color: MyFoodAppColor.yellowColor,
      //             borderRadius: BorderRadius.circular(7.sp),
      //             containerWidget: Icon(
      //               Icons.search_rounded,
      //               color: MyFoodAppColor.whiteColor,
      //               size: 22.sp,
      //             ),
      //           ).onlyPadding(left: 310),
      //         ],
      //       ).onlyPadding(left: 20.sp, top: 20.sp),
      //     ).onlyPadding(top: 20.sp),
      //   ],
      // ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            expandedHeight: 250.0,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('Demo'),
            ),
          ),
          SliverGrid(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200.0,
              mainAxisSpacing: 10.0,
              crossAxisSpacing: 10.0,
              childAspectRatio: 4.0,
            ),
            delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                return Container(
                  alignment: Alignment.center,
                  color: Colors.teal[100 * (index % 9)],
                  child: Text('Grid Item $index'),
                );
              },
              childCount: 20,
            ),
          ),
          // SliverFixedExtentList(
          //   itemExtent: 50.0,
          //   delegate: SliverChildBuilderDelegate(
          //         (BuildContext context, int index) {
          //       return Container(
          //         alignment: Alignment.center,
          //         color: Colors.lightBlue[100 * (index % 9)],
          //         child: Text('List Item $index'),
          //       );
          //     },
          //   ),
          // ),
        ],
      ),
    );
  }
}
