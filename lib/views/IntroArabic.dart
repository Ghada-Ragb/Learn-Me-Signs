import 'package:flutter/material.dart';
import 'package:learn_me_signs/widgets/learn_cardE.dart';
import 'package:learn_me_signs/views/AlpaArabic.dart';
import 'package:learn_me_signs/views/ColorArabicMenu.dart';
import 'package:learn_me_signs/views/DayArabicMenu.dart';
import 'package:learn_me_signs/views/NumArabic.dart';

class Home_Page_Arabic extends StatelessWidget {
  const Home_Page_Arabic({super.key});

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
                      "assets/images/Girl.jpg",
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
                                      builder: (context) => Alpa_Arabic()));
                            },
                            child: LearnCardE(
                              image: 'assets/images/AlpaLearn.jpg',
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
                                      builder: (context) => NumArabic()));
                            },
                            child: LearnCardE(
                              image: 'assets/images/NumLearn.jpg',
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
                                      builder: (context) =>
                                          ColorsArabicMenu()));
                            },
                            child: LearnCardE(
                              image: 'assets/images/ColorsLearn.jpg',
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
                                      builder: (context) => DayArabicMenu()));
                            },
                            child: LearnCardE(
                              image: 'assets/images/DaysLearn.jpg',
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


/*
Container(
                  padding: const EdgeInsets.only(top: 400),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 40.0),
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Alpa_Arabic()));
                          },
                          child: LearnCardE(
                            image: 'assets/images/alpaarabic.jpg',
                            label: 'الحروف',
                            color: const Color.fromARGB(255, 143, 83, 165),
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
                                    builder: (context) => NumArabic()));
                          },
                          child: LearnCardE(
                            image: 'assets/images/numberarabic.jpg',
                            label: 'الارقام',
                            left: 12,
                            color: const Color.fromARGB(255, 143, 83, 165),
                            ontap: () {},
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 560),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 40.0),
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ColorsArabicMenu()));
                          },
                          child: LearnCardE(
                            image: 'assets/images/colorarabic.jpg',
                            label: 'الالوان',
                            color: const Color.fromARGB(255, 143, 83, 165),
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
                                    builder: (context) => DayArabicMenu()));
                          },
                          child: LearnCardE(
                            image: 'assets/images/days.png',
                            label: 'ايام الاسبوع',
                            left: 1.0,
                            color: const Color.fromARGB(255, 143, 83, 165),
                            ontap: () {},
                          ),
                        ),
                      ],
                    ),
                  ),
                ),*/