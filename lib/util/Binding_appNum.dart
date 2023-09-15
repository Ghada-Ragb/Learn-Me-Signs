import 'package:get/get.dart';
import 'package:learn_me_signs/controller/QuizArabicNum.dart';

class BilndingsAppNum implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => QuizArabicNum());
  }
}
