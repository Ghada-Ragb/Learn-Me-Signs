import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:learn_me_signs/views/IntroArabic.dart';
import 'package:learn_me_signs/views/IntroEnglish.dart';
import 'package:learn_me_signs/views/QuizArabic.dart';
import 'package:learn_me_signs/views/QuizEng.dart';
import 'package:learn_me_signs/views/Welcome_Page.dart';
//import 'package:learn_me_signs/Views/Welcome_Page.dart';

void main() {
  runApp(const Learn_Me_Signs());
}

class Learn_Me_Signs extends StatelessWidget {
  const Learn_Me_Signs({super.key});

  @override
  Widget build(BuildContext context) {
    /* return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Welcome_Page(),
    );*/
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Welcome_Page(),
      //BottomBarExample(),
    );
  }
}

class BottomBarExample extends StatefulWidget {
  @override
  _BottomBarExampleState createState() => _BottomBarExampleState();
}

class _BottomBarExampleState extends State<BottomBarExample> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    Welcome_Page(),
    Home_Page_Arabic(),
    QuizArabic(),
    Home_Page_English(),
    QuizEng(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: _pages,
      ),
      bottomNavigationBar: Container(
        height: 70,
        color: Color.fromARGB(255, 182, 129, 202),
        child: GNav(
          backgroundColor: Color.fromARGB(255, 212, 173, 226),
          iconSize: 25,
          gap: 8,
          tabBackgroundColor: Color.fromARGB(255, 184, 141, 200),
          activeColor: Colors.white,
          padding: EdgeInsets.all(16),
          //currentIndex: _currentIndex,
          onTabChange: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          tabs: const [
            GButton(
              icon: Icons.home,
              text: "Home",
              iconColor: Colors.white,
              iconSize: 30,
            ),
            GButton(
              icon: Icons.apps,
              text: "تعلم",
              iconColor: Colors.white,
              iconSize: 30,
            ),
            GButton(
              icon: Icons.add_task_rounded,
              text: "الاختبارات",
              iconColor: Colors.white,
              iconSize: 30,
            ),
            GButton(
              icon: Icons.article_rounded,
              text: "Learn",
              iconColor: Colors.white,
              iconSize: 30,
            ),
            GButton(
              icon: Icons.question_answer,
              text: "Quizzes",
              iconColor: Colors.white,
              iconSize: 30,
            ),
          ],
        ),
      ),
    );
    /*return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: _pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromARGB(255, 182, 129, 202),
        iconSize: 25,
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            backgroundColor: Color.fromARGB(155, 160, 102, 180),
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            backgroundColor: Color.fromARGB(155, 160, 102, 180),
            icon: Icon(Icons.apps),
            label: 'تعلم',
          ),
          BottomNavigationBarItem(
            backgroundColor: Color.fromARGB(155, 160, 102, 180),
            icon: Icon(Icons.add_task_rounded),
            label: 'اختبارات',
          ),
          BottomNavigationBarItem(
            backgroundColor: Color.fromARGB(155, 160, 102, 180),
            icon: Icon(Icons.article_rounded),
            label: 'learn',
          ),
          /*BottomNavigationBarItem(
            backgroundColor: Color.fromARGB(155, 160, 102, 180),
            icon: Icon(Icons.question_answer),
            label: 'Quizzes',
          ),*/
        ],
      ),
    );
  }*/
  }
}
