import 'package:get/get.dart';
import 'package:learn_me_signs/controller/QuizArabicDays.dart';

class BilndingsAppDays implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => QuizArabicDays());
  }
}
