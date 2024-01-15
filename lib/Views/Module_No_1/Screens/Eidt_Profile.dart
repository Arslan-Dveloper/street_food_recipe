import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:street_food_recipe/MyCustomWidget/CustomWidget.dart';

class EditProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: Icon(Icons.arrow_back_ios),
        ),
        title: MyText(
          text: 'Profile',
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [],
      ),
    );
  }
}
