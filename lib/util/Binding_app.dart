import 'package:get/get.dart';
import 'package:learn_me_signs/controller/QuizArabicAlpa.dart';

class BilndingsApp implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => QuizArabicAlap());
  }
}
