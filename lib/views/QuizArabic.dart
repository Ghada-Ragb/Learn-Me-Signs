import 'package:flutter/material.dart';
import 'package:learn_me_signs/views/FinalQuiz.dart';
import 'package:learn_me_signs/views/FinalQuizArabicColor.dart';
import 'package:learn_me_signs/views/FinalQuizArabicDays.dart';
import 'package:learn_me_signs/views/FinalQuizNum.dart';

import 'package:learn_me_signs/widgets/learn_cardE.dart';
//import 'package:learn_me_signs/views/AlpaArabic.dart';
//import 'package:learn_me_signs/views/ColorArabicMenu.dart';
//import 'package:learn_me_signs/views/DayArabicMenu.dart';
//import 'package:learn_me_signs/views/NumArabic.dart';

class QuizArabic extends StatelessWidget {
  const QuizArabic({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 2,
                  decoration: const BoxDecoration(color: Colors.white),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 2.1,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: const Color.fromARGB(155, 160, 102, 180),
                      width: 4,
                    ),
                    borderRadius: const BorderRadius.only(
                      bottomRight: Radius.circular(90),
                    ),
                  ),
                  child: Center(
                    child: Image.asset(
                      "assets/images/QuizArabic.jpg",
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height / 2.5,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 75),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 2.666,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => FinalQuiz()));
                            },
                            child: LearnCardE(
                              image: 'assets/images/AlpaQuiz.jpg',
                              label: 'الحروف',
                              color: const Color.fromARGB(255, 171, 107, 195),
                              left: 2.0,
                              ontap: () {},
                            ),
                          ),
                          const SizedBox(
                            width: 20.0,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => FinalQuizNum()));
                            },
                            child: LearnCardE(
                              image: 'assets/images/NumQuiz.jpg',
                              label: 'الارقام',
                              left: 2,
                              color: const Color.fromARGB(255, 171, 107, 195),
                              ontap: () {},
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 34,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => FinalQuizColor()));
                            },
                            child: LearnCardE(
                              image: 'assets/images/ColorsQuiz.jpg',
                              label: 'الالوان',
                              color: const Color.fromARGB(255, 171, 107, 195),
                              left: 2.0,
                              ontap: () {},
                            ),
                          ),
                          const SizedBox(
                            width: 20.0,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => FinalQuizDays()));
                            },
                            child: LearnCardE(
                              image: 'assets/images/DaysQuiz.jpg',
                              label: 'الايام',
                              left: 1.0,
                              color: const Color.fromARGB(255, 171, 107, 195),
                              ontap: () {},
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
