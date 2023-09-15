import 'package:get/get.dart';
import 'package:learn_me_signs/controller/QuizEngAlpa.dart';

class Binding_appAlpaEng implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => QuizEngAlap());
  }
}
