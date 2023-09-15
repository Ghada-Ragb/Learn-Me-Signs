import 'package:get/get.dart';
import 'package:learn_me_signs/controller/QuizEngDay.dart';

class Binding_appEngDay implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => QuizEngDay());
  }
}
