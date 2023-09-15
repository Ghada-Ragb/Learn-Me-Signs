import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_me_signs/controller/QuizEngDay.dart';

class ProgressTimerEngDay extends StatelessWidget {
  ProgressTimerEngDay({Key? key}) : super(key: key);
  final controller = Get.find<QuizEngDay>();
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => SizedBox(
        height: 50,
        width: 50,
        child: Stack(
          alignment: Alignment.center,
          fit: StackFit.expand,
          children: [
            CircularProgressIndicator(
              value: 1 - (controller.sec.value / 15),
              color: const Color.fromARGB(155, 160, 102, 180),
              backgroundColor: Color.fromARGB(255, 222, 198, 222),
              strokeWidth: 8,
            ),
            Center(
              child: Text(
                '${controller.sec.value}',
                style: Theme.of(context)
                    .textTheme
                    .headline6!
                    .copyWith(color: const Color.fromARGB(155, 160, 102, 180)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
