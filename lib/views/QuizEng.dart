import 'package:flutter/material.dart';
import 'package:learn_me_signs/views/FinalQuizEngAlpa.dart';
import 'package:learn_me_signs/views/FinalQuizEngColor.dart';
import 'package:learn_me_signs/views/FinalQuizEngDay.dart';
import 'package:learn_me_signs/views/FinalQuizEngNum.dart';
import 'package:learn_me_signs/widgets/learn_cardE.dart';

class QuizEng extends StatelessWidget {
  const QuizEng({super.key});

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
                      "assets/images/Boy.jpg",
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
                                      builder: (context) =>
                                          FinalQuizEngAlpa()));
                            },
                            child: LearnCardE(
                              image: 'assets/images/quizzes/alphabets_quiz.png',
                              label: 'Alphabets',
                              // color: const Color.fromARGB(155, 160, 102, 180),
                              color: const Color.fromARGB(255, 168, 118, 185),
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
                                      builder: (context) => FinalQuizEngNum()));
                            },
                            child: LearnCardE(
                              image: 'assets/images/quizzes/NumEngQuiz.jpg',
                              label: 'Numbers',
                              left: 12,
                              color: const Color.fromARGB(255, 168, 118, 185),
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
                                      builder: (context) =>
                                          FinalQuizEngColor()));
                            },
                            child: LearnCardE(
                              image: 'assets/images/quizzes/ColorEngQuiz.jpg',
                              label: 'Colors',
                              color: const Color.fromARGB(255, 168, 118, 185),
                              left: 12.0,
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
                                      builder: (context) => FinalQuizEngDay()));
                            },
                            child: LearnCardE(
                              image: 'assets/images/quizzes/DaysQuiz.jpg',
                              label: ' Days ',
                              left: 0.0,
                              color: const Color.fromARGB(255, 168, 118, 185),
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
