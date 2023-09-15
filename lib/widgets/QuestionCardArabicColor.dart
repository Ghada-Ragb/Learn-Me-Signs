import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_me_signs/controller/QuizArabicColor.dart';
import 'package:learn_me_signs/model/QuestionArabic.dart';
import 'package:learn_me_signs/widgets/AnswerOptionArabicColor.dart';

class QuestionCardArabicColor extends StatelessWidget {
  final QuestionArabicModel questionModel;

  const QuestionCardArabicColor({
    Key? key,
    required this.questionModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height / 1.5,
          margin: const EdgeInsets.symmetric(horizontal: 20.0),
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 241, 224, 240),
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    /*decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                        color: const Color.fromARGB(155, 160, 102, 180),
                        width: 3,
                      ),
                    ),*/

                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height / 4.0,
                    child: Image.asset(
                      questionModel.question,
                      fit: BoxFit.fill,
                    ),
                  ),
                  const SizedBox(height: 45),
                  ...List.generate(
                      questionModel.options.length,
                      (index) => Column(
                            children: [
                              AnswerOptionsArabicColor(
                                  questionId: questionModel.id,
                                  text: questionModel.options[index],
                                  index: index,
                                  onPressed: () => Get.find<QuizArabicColor>()
                                      .checkAnswer(questionModel, index)),
                            ],
                          )),
                ],
              ),
            ),
          )),
    );
  }
}
