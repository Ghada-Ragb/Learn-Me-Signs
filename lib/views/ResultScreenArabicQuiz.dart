import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_me_signs/controller/QuizArabicAlpa.dart';
import 'package:learn_me_signs/widgets/CustomButton.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({Key? key}) : super(key: key);
  static const routeName = '/result_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF2F1ED),
      body: Stack(
        children: [
          Center(
            child: GetBuilder<QuizArabicAlap>(
              init: Get.find<QuizArabicAlap>(),
              builder: (controller) => Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 1.0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Text(
                        'مبروك',
                        style: Theme.of(context).textTheme.headline3!.copyWith(
                              color: const Color.fromARGB(155, 160, 102, 180),
                              fontFamily: 'Lobster',
                              fontSize: 60,
                              fontWeight: FontWeight.bold,
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
                      'درجاتك هي ',
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
                        text: 'اعادة المحاوله'),
                    const SizedBox(
                      height: 30,
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        width: MediaQuery.of(context).size.width / 1.0,
                        height: MediaQuery.of(context).size.height / 2.4,
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
