import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyFoodAppController extends GetxController {
  Rx<int> selectedIndex = 0.obs;
  Rx<int> pageIndex = 0.obs;
  final pageController = PageController(initialPage: 0);
  final pageControllerOne =
      PageController(initialPage: 0, viewportFraction: 0.7);

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


}
