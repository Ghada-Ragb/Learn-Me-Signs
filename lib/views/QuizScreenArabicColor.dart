import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_me_signs/controller/QuizArabicColor.dart';
import 'package:learn_me_signs/widgets/CustomButton.dart';
import 'package:learn_me_signs/widgets/ProgressTimerArabicColor.dart';
import 'package:learn_me_signs/widgets/QuestionCardArabicColor.dart';

class QuizScreenArabicColor extends StatelessWidget {
  const QuizScreenArabicColor({Key? key}) : super(key: key);
  static const routeName = '/quiz_screen3';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF2F1ED),
      // extendBodyBehindAppBar: true,
      // appBar: AppBar(
      //   elevation: 0,
      //   backgroundColor: Colors.transparent,
      // ),
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Container(
            decoration: const BoxDecoration(
                // image: DecorationImage(
                //     image: AssetImage('assets/images/here.jpg'),
                //     fit: BoxFit.cover),
                color: Colors.white),
          ),
          SafeArea(
            child: GetBuilder<QuizArabicColor>(
              init: QuizArabicColor(),
              builder: (controller) => SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          RichText(
                            text: TextSpan(
                                text: 'الاسئله ',
                                style: Theme.of(context)
                                    .textTheme
                                    .headline4!
                                    .copyWith(
                                      color: const Color.fromARGB(
                                          155, 160, 102, 180),
                                    ),
                                children: [
                                  TextSpan(
                                      text: controller.numberOfQuestion
                                          .round()
                                          .toString(),
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline4!
                                          .copyWith(
                                            color: const Color.fromARGB(
                                                155, 160, 102, 180),
                                          )),
                                  TextSpan(
                                      text: '/',
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline5!
                                          .copyWith(
                                            color: const Color.fromARGB(
                                                155, 160, 102, 180),
                                          )),
                                  TextSpan(
                                      text:
                                          controller.countOfQuestion.toString(),
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline5!
                                          .copyWith(
                                            color: const Color.fromARGB(
                                                155, 160, 102, 180),
                                          )),
                                ]),
                          ),
                          ProgressTimerArabicColor(),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height / 1.0,
                      child: PageView.builder(
                        scrollDirection: Axis.horizontal,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) =>
                            QuestionCardArabicColor(
                          questionModel: controller.questionsList[index],
                        ),
                        controller: controller.pageController,
                        itemCount: controller.questionsList.length,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: GetBuilder<QuizArabicColor>(
        init: QuizArabicColor(),
        builder: (controller) => CustomButton(
            onPressed: () => controller.nextQuestion(), text: 'التالي'),
      ),
    );
  }
}
