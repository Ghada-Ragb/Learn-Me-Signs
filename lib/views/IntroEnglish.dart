import 'package:flutter/material.dart';
import 'package:learn_me_signs/views/AlpaEng.dart';
import 'package:learn_me_signs/views/ColorEngMenu.dart';
import 'package:learn_me_signs/views/DaysEngMenu.dart';
import 'package:learn_me_signs/views/NumEng.dart';
import 'package:learn_me_signs/widgets/learn_cardE.dart';

class Home_Page_English extends StatelessWidget {
  const Home_Page_English({super.key});

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
                      "assets/images/LearnEng.jpg",
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
                                      builder: (context) => Alpa_Eng()));
                            },
                            child: LearnCardE(
                              image: 'assets/images/alphabet.png',
                              label: 'Alphabets',
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
                                      builder: (context) => NumEng()));
                            },
                            child: LearnCardE(
                              image: 'assets/images/numbers.png',
                              label: 'Numbers',
                              left: 12,
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
                                      builder: (context) => ColorsEngMenu()));
                            },
                            child: LearnCardE(
                              image: 'assets/images/colors.png',
                              label: 'Colors',
                              color: const Color.fromARGB(255, 171, 107, 195),
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
                                      builder: (context) => DayEngMenu()));
                            },
                            child: LearnCardE(
                              image: 'assets/images/DaysEngLearn.jpg',
                              label: ' Days',
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
