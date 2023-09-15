import 'package:flutter/material.dart';
import 'package:learn_me_signs/views/ColorScreensEng/Black.dart';
import 'package:learn_me_signs/views/ColorScreensEng/Blue.dart';
import 'package:learn_me_signs/views/ColorScreensEng/Green.dart';
import 'package:learn_me_signs/views/ColorScreensEng/Orange.dart';
import 'package:learn_me_signs/views/ColorScreensEng/Red.dart';
import 'package:learn_me_signs/views/ColorScreensEng/Rose.dart';
import 'package:learn_me_signs/views/ColorScreensEng/Volite.dart';
import 'package:learn_me_signs/views/ColorScreensEng/White.dart';
import 'package:learn_me_signs/views/ColorScreensEng/Yellow.dart';
import 'package:learn_me_signs/views/IntroArabic.dart';
import 'package:learn_me_signs/views/IntroEnglish.dart';
import 'package:learn_me_signs/views/QuizArabic.dart';
import 'package:learn_me_signs/views/QuizEng.dart';
import 'package:learn_me_signs/widgets/learn_cardE.dart';
import 'package:learn_me_signs/views/Welcome_Page.dart';

class ColorsEngMenu extends StatelessWidget {
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
            "\t\t\tChoose Color\t\t\t",
            style: TextStyle(
              fontSize: 40.0,
              fontWeight: FontWeight.bold,
              fontFamily: 'Lobster',
              color: Color.fromARGB(255, 190, 120, 200),
            ),
          ),
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: Padding(
        padding: const EdgeInsets.only(top: 35),
        child: Container(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => VioletEng()));
                      },
                      child: LearnCardE(
                        image: 'assets/images/colour_cards/violet.png',
                        label: 'Violet',
                        color: const Color(0xFF9133FA),
                        left: 25.0,
                        ontap: () {},
                      ),
                    ),
                    const SizedBox(
                      width: 20.0,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => BlueEng()));
                      },
                      child: LearnCardE(
                        image: 'assets/images/colour_cards/blue.png',
                        label: 'Blue',
                        left: 52,
                        color: const Color(0xFF0F70D4),
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
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => GreenEng()));
                      },
                      child: LearnCardE(
                        image: 'assets/images/colour_cards/green.png',
                        label: 'Green',
                        left: 48.0,
                        color: const Color(0xFF1DD406),
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
                                builder: (context) => YellowEng()));
                      },
                      child: LearnCardE(
                        image: 'assets/images/colour_cards/yellow.png',
                        label: 'Yellow',
                        left: 45,
                        color: const Color(0XFFD4BF00),
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
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => OrangeEng()));
                      },
                      child: LearnCardE(
                        image: 'assets/images/colour_cards/orange.png',
                        label: 'Orange',
                        left: 35.0,
                        color: const Color(0xFFFF8A00),
                        ontap: () {},
                      ),
                    ),
                    const SizedBox(
                      width: 20.0,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => RedEng()));
                      },
                      child: LearnCardE(
                        image: 'assets/images/colour_cards/red.png',
                        label: 'Red',
                        color: const Color(0xFFD40F0F),
                        left: 58,
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
                            MaterialPageRoute(builder: (context) => PinkEng()));
                      },
                      child: LearnCardE(
                        image: 'assets/images/colour_cards/pink.png',
                        label: 'Pink',
                        left: 52.0,
                        color: const Color(0xFFFA33BD),
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
                                builder: (context) => WhiteEng()));
                      },
                      child: LearnCardE(
                        image: 'assets/images/colour_cards/white.png',
                        label: 'White',
                        left: 45.0,
                        color: const Color.fromARGB(255, 207, 195, 195),
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
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => BlackEng()));
                      },
                      child: LearnCardE(
                        image: 'assets/images/colour_cards/black.png',
                        label: 'Black',
                        left: 48,
                        color: const Color(0xFF2D3644),
                        ontap: () {},
                      ),
                    ),
                  ],
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
