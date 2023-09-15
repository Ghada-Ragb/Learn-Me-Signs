import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:learn_me_signs/controller/QuizEngColor.dart';

class AnswerOptionsEngColor extends StatelessWidget {
  const AnswerOptionsEngColor({
    Key? key,
    required this.text,
    required this.index,
    required this.questionId,
    required this.onPressed,
  }) : super(key: key);

  final String text;
  final int index;
  final int questionId;
  final Function() onPressed;
//هنا الويدجت بتاععت الاجابات
  @override
  Widget build(BuildContext context) {
    return GetBuilder<QuizEngColor>(
      init: Get.find<QuizEngColor>(),
      builder: (controller) => InkWell(
          onTap:
              controller.checkIsQuestionAnswered(questionId) ? null : onPressed,
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border:
                    Border.all(width: 3, color: controller.getColor(index))),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                    text: TextSpan(
                        text: '${index + 1}. ',
                        style: Theme.of(context).textTheme.headline6,
                        children: [
                          TextSpan(
                            text: text,
                            style: Theme.of(context).textTheme.headline6,
                          ),
                        ]),
                  ),
                  if (controller.checkIsQuestionAnswered(questionId) &&
                      controller.selectAnswer == index)
                    Container(
                        width: 30,
                        height: 30,
                        padding: EdgeInsets.zero,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: controller.getColor(index),
                            border: Border.all(
                              color: Colors.white,
                              width: 3,
                            ),
                            shape: BoxShape.circle),
                        child: Icon(
                          controller.getIcon(index),
                          color: Colors.white,
                        ))
                ],
              ),
            ),
          )),
    );
  }
}
