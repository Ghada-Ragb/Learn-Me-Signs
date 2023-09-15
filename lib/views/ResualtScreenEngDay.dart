import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_me_signs/controller/QuizEngDay.dart';
import 'package:learn_me_signs/widgets/CustomButton.dart';

class ResultScreenEngDay extends StatelessWidget {
  const ResultScreenEngDay({Key? key}) : super(key: key);
  static const routeName = '/result_screen8';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF2F1ED),
      body: Stack(
        children: [
          Center(
            child: GetBuilder<QuizEngDay>(
              init: Get.find<QuizEngDay>(),
              builder: (controller) => Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 1.0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 40,
                      ),
                      child: Text(
                        'Congratulation',
                        style: Theme.of(context).textTheme.headline3!.copyWith(
                              color: const Color.fromARGB(155, 160, 102, 180),
                              fontFamily: 'Lobster',
                            ),
                      ),
                    ),
                    Text(
                      controller.name,
                      style: Theme.of(context).textTheme.headline3!.copyWith(
                            color: const Color.fromARGB(155, 160, 102, 180),
                            fontFamily: 'Lobster',
                          ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Your Score is',
                      style: Theme.of(context).textTheme.headline4!.copyWith(
                            color: const Color.fromARGB(155, 160, 102, 180),
                            fontFamily: 'Lobster',
                          ),
                    ),
                    const SizedBox(
                      height: 7,
                    ),
                    Text(
                      '${controller.scoreResult.round()} /100',
                      style: Theme.of(context).textTheme.headline3!.copyWith(
                            color: const Color.fromARGB(155, 160, 102, 180),
                            fontFamily: 'Lobster',
                          ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    CustomButton(
                        onPressed: () => controller.startAgain(),
                        text: 'Start Again'),
                    const SizedBox(
                      height: 30,
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        width: MediaQuery.of(context).size.width / 1.0,
                        height: MediaQuery.of(context).size.height / 2.1,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/finalImage.jpg"),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
