import 'package:flutter/material.dart';
import 'package:learn_me_signs/views/DayScreens/Fri.dart';
import 'package:learn_me_signs/views/DayScreens/Mon.dart';
import 'package:learn_me_signs/views/DayScreens/Sat.dart';
import 'package:learn_me_signs/views/DayScreens/Sun.dart';
import 'package:learn_me_signs/views/DayScreens/Th.dart';
import 'package:learn_me_signs/views/DayScreens/Tu.dart';
import 'package:learn_me_signs/views/DayScreens/We.dart';
import 'package:learn_me_signs/views/IntroEnglish.dart';
import 'package:learn_me_signs/views/QuizArabic.dart';
import 'package:learn_me_signs/views/QuizEng.dart';
import 'package:learn_me_signs/widgets/learn_cardA.dart';
import 'package:learn_me_signs/views/Welcome_Page.dart';
import 'package:learn_me_signs/views/IntroArabic.dart';

class DayArabicMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 90,
        centerTitle: true,
        backgroundColor: Color.fromARGB(244, 216, 197, 223),
        title: const Card(
          shadowColor: Color.fromARGB(155, 9, 9, 9),
          elevation: 12,
          color: Color.fromARGB(244, 235, 220, 241),
          shape: BeveledRectangleBorder(),
          child: Text(
            " 🌸ايام الاسبوع🌸",
            style: TextStyle(
              fontSize: 35.0,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 190, 120, 200),
            ),
          ),
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: Padding(
        padding: const EdgeInsets.only(top: 35),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Sat()));
                      },
                      child: LearnCardA(
                        image: 'assets/images/Days2(Week)/Sat.jpg',
                        // label: 'السبت',
                        color: const Color.fromARGB(255, 190, 120, 200),
                        left: 45.0,
                        ontap: () {},
                      ),
                    ),
                    const SizedBox(
                      width: 20.0,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Sun()));
                      },
                      child: LearnCardA(
                        image: 'assets/images/Days2(Week)/Sun.jpg',
                        // label: 'الاحد',
                        left: 52,
                        color: const Color.fromARGB(255, 190, 120, 200),
                        ontap: () {},
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 35.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Mon()));
                      },
                      child: LearnCardA(
                        image: 'assets/images/Days2(Week)/Mon.jpg',
                        // label: "الاثنين",
                        left: 48.0,
                        color: const Color.fromARGB(255, 190, 120, 200),
                        ontap: () {},
                      ),
                    ),
                    const SizedBox(
                      width: 20.0,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Tu()));
                      },
                      child: LearnCardA(
                        image: 'assets/images/Days2(Week)/Tu.jpg',
                        // label: 'الثلاثاء',
                        left: 45,
                        color: const Color.fromARGB(255, 190, 120, 200),
                        ontap: () {},
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 35.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => We()));
                      },
                      child: LearnCardA(
                        image: 'assets/images/Days2(Week)/We.jpg',
                        //label: "الاربعاء",
                        left: 40.0,
                        color: const Color.fromARGB(255, 190, 120, 200),
                        ontap: () {},
                      ),
                    ),
                    const SizedBox(
                      width: 20.0,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Th()));
                      },
                      child: LearnCardA(
                        image: 'assets/images/Days2(Week)/Th.jpg',
                        //label: 'الخميس',
                        color: const Color.fromARGB(255, 190, 120, 200),
                        left: 58,
                        ontap: () {},
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 35.0,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Fri()));
                  },
                  child: LearnCardA(
                    image: 'assets/images/Days2(Week)/Fri.jpg',
                    //label: 'الجمعه',
                    left: 48,
                    color: const Color.fromARGB(255, 190, 120, 200),
                    ontap: () {},
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      drawer: const NavigationBarDrawer(),
    );
  }
}

class NavigationBarDrawer extends StatelessWidget {
  const NavigationBarDrawer({super.key});

  @override
  Widget build(BuildContext context) => Drawer(
        //shadowColor: const Color.fromARGB(155, 160, 102, 180),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildHeader(context),
              buildMenuItem(context),
            ],
          ),
        ),
      );
  Widget buildHeader(BuildContext context) => Container(
        padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
      );
  Widget buildMenuItem(BuildContext context) => Container(
        padding: const EdgeInsets.all(20),
        child: Wrap(
          runSpacing: 12,
          children: [
            Container(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 233, 218, 236),
                borderRadius: const BorderRadius.all(Radius.circular(20.0)),
                border: Border.all(
                  color: const Color.fromARGB(255, 190, 120, 200),
                  width: 2,
                ),
              ),
              child: ListTile(
                leading: const Icon(Icons.home_outlined),
                title: const Text(
                  "Home",
                  style: TextStyle(
                    color: Color.fromARGB(155, 160, 102, 180),
                    fontSize: 25,
                    fontFamily: 'Lobster',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Welcome_Page()));
                },
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 233, 218, 236),
                borderRadius: const BorderRadius.all(Radius.circular(20.0)),
                border: Border.all(
                  color: const Color.fromARGB(255, 190, 120, 200),
                  width: 2,
                ),
              ),
              child: ListTile(
                leading: const Icon(Icons.apps),
                title: const Text(
                  "تعلم",
                  style: TextStyle(
                    color: Color.fromARGB(155, 160, 102, 180),
                    fontSize: 28,
                    fontFamily: 'Lobster',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Home_Page_Arabic()));
                },
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 233, 218, 236),
                borderRadius: const BorderRadius.all(Radius.circular(20.0)),
                border: Border.all(
                  color: const Color.fromARGB(255, 190, 120, 200),
                  width: 2,
                ),
              ),
              child: ListTile(
                leading: const Icon(
                  Icons.add_task_rounded,
                ),
                title: const Text(
                  "الاختبارات",
                  style: TextStyle(
                    color: Color.fromARGB(155, 160, 102, 180),
                    fontSize: 28,
                    fontFamily: 'Lobster',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => QuizArabic()));
                },
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 233, 218, 236),
                borderRadius: const BorderRadius.all(Radius.circular(20.0)),
                border: Border.all(
                  color: const Color.fromARGB(255, 190, 120, 200),
                  width: 2,
                ),
              ),
              child: ListTile(
                leading: const Icon(Icons.article_rounded),
                title: const Text(
                  "Learn",
                  style: TextStyle(
                    color: Color.fromARGB(155, 160, 102, 180),
                    fontSize: 25,
                    fontFamily: 'Lobster',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Home_Page_English()));
                },
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 233, 218, 236),
                borderRadius: const BorderRadius.all(Radius.circular(20.0)),
                border: Border.all(
                  color: const Color.fromARGB(255, 190, 120, 200),
                  width: 2,
                ),
              ),
              child: ListTile(
                leading: const Icon(
                  Icons.add_task_rounded,
                ),
                title: const Text(
                  "Quiz",
                  style: TextStyle(
                    color: Color.fromARGB(155, 160, 102, 180),
                    fontSize: 25,
                    fontFamily: 'Lobster',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => QuizEng()));
                },
              ),
            ),
          ],
        ),
      );
}
