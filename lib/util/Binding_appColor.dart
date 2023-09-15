import 'package:get/get.dart';
import 'package:learn_me_signs/controller/QuizArabicColor.dart';

class BilndingsAppColor implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => QuizArabicColor());
  }
}
