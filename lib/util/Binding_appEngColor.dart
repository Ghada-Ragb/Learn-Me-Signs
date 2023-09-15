import 'package:get/get.dart';
import 'package:learn_me_signs/controller/QuizEngColor.dart';

class Binding_appEngColor implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => QuizEngColor());
  }
}
