import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:street_food_recipe/Controller/Practice_Controller.dart';

class DropDownPractice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    PracticeController controller = Get.put(PracticeController());
    return Scaffold(
      // body: DropdownButton<String>(
      //   value: controller.selectedValue.value,
      //   items: controller.nameList.map((String value) {
      //     return DropdownMenuItem(
      //       value: value,
      //       child: Text(value),
      //     );
      //   }).toList(),
      //   onChanged: (value) {
      //     controller.selectedValue.value= value!;
      //   },
      // ),
      // body: DropdownButton<String>(
      //   value: controller.selectedValue.value,
      //   items: controller.nameList.map((String value) {
      //     return DropdownMenuItem(
      //       value: value,
      //       child: Text(value),
      //     );
      //   }).toList(),
      //   onChanged: (value) {
      //     controller.selectedValue.value!=value;
      //   },
      // ),
    );
  }
}
