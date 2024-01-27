import 'package:get/get.dart';

class PracticeController extends GetxController {
  RxList<String> nameList = [
    'First',
    'Second',
    'Third',
    'Forth',
    'Six',
  ].obs;

  Rx<String>selectedValue=''.obs;
}
