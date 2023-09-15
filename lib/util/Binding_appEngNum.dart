import 'package:get/get.dart';
import 'package:learn_me_signs/controller/QuizEngNum.dart';

class Binding_appNumEng implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => QuizEngNum());
  }
}
