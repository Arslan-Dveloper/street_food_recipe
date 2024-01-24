import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:street_food_recipe/Helpers/constant.dart';

class MyFoodAppController extends GetxController {
  Rx<int> selectedIndex = 0.obs;
  Rx<int> pageIndex = 0.obs;
  final pageController = PageController(initialPage: 0);
  final pageControllerOne =
      PageController(initialPage: 1, viewportFraction: 0.9);

  void onPageChanged(int value) {
    pageIndex.value = value;
  }

  Rx<bool> isHiddenOne = true.obs;
  Rx<bool> isHiddenTwo = true.obs;
  Rx<bool> isHiddenLogIn = true.obs;

  RxList<String> images = [
    'assets/images/imageOne.png',
    'assets/images/imageTwo.png',
    'assets/images/imageThree.png',
  ].obs;

  RxList<String> headingOne = [
    'Get all the healthy recipes',
    '    Get the exact nutrition',
    '   Get daily calorie target',
  ].obs;

  RxList<String> headingTwo = [
    '           that you need',
    'value of everything you eat',
    'value of everything you eat',
  ].obs;

  RxList<String> bodyText = [
    'Whether you are losing or gaining.we have all the recipes you’ll need.',
    'We are updating our food database every minute to help you track your calories',
    'Set your target weight and select your monthly schedule, and we’ill do the rest',
  ].obs;
  Rx<IconData> MyIcon = Icons.arrow_forward.obs;
  Rx<int> number = 0.obs;
  Rx<bool> isTrue = false.obs;

  List<String> data = [
    'First',
    'Second',
    'Third',
    'Forth',
    'Fifth',
  ];

  Rx<Color> whiteColor = MyFoodAppColor.whiteColor.obs;
  Rx<Color> yellowColor = MyFoodAppColor.yellowColor.obs;
  Rx<bool> click = false.obs;
}
