import 'package:flutter/material.dart';
import 'package:learn_me_signs/views/IntroArabic.dart';
import 'package:learn_me_signs/views/IntroEnglish.dart';
import 'package:learn_me_signs/views/QuizArabic.dart';
import 'package:learn_me_signs/views/Welcome_Page.dart';

class bottomBar extends StatelessWidget {
  const bottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    /* return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Welcome_Page(),
    );*/
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottomBarExample(),
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
    Home_Page_Arabic(),
    QuizArabic(),
    Home_Page_English(),
    Welcome_Page(),

    //Home_Page_English(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: _pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromARGB(255, 182, 129, 202),
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
            icon: Icon(Icons.favorite),
            label: 'تعلم',
          ),
          BottomNavigationBarItem(
            backgroundColor: Color.fromARGB(155, 160, 102, 180),
            icon: Icon(Icons.question_answer),
            label: 'اختبارات',
          ),
          BottomNavigationBarItem(
            backgroundColor: Color.fromARGB(155, 160, 102, 180),
            icon: Icon(Icons.favorite),
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
  }
}
