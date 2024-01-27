import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:street_food_recipe/Views/Module_No_1/Screens/Splash_Screen.dart';
import 'package:street_food_recipe/Views/Module_No_3/Log_In_Screen.dart';
import 'package:street_food_recipe/Views/Practice/DropDown_Button.dart';
import 'Views/Module_No_1/Screens/screen_practice.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
           home: SplashScreen(),
          //home: PracticeScreen(),
          //home: LogInScreenModuleNoThree(),
          //home: DropDownPractice(),
        );
      },
    );
  }
}
