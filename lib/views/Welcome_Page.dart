import 'package:flutter/material.dart';
import 'package:learn_me_signs/views/IntroEnglish.dart';
//import 'package:lottie/lottie.dart';
import 'package:learn_me_signs/Views/IntroArabic.dart';
import 'package:learn_me_signs/views/QuizArabic.dart';
import 'package:learn_me_signs/views/QuizEng.dart';

class Welcome_Page extends StatefulWidget {
  const Welcome_Page({super.key});

  @override
  State<Welcome_Page> createState() => _Welcome_PageState();
}

class _Welcome_PageState extends State<Welcome_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: const Color.fromARGB(155, 160, 102, 180),
        centerTitle: true,
        elevation: 0,
        title: const Text(
          "Learn Me Signs",
          style: TextStyle(
            fontFamily: 'Lobster',
            fontSize: 40,
          ),
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth <= 600) {
            return buildMobileLayout(context);
          } else if (constraints.maxWidth <= 1200) {
            return buildTabletLayout(context);
          } else {
            return buildDesktopLayout(context);
          }
        },
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

Widget buildMobileLayout(BuildContext context) {
  return Column(
    children: [
      Container(
        height: 500,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/intro.jpg"),
            fit: BoxFit.fill,
          ),
        ),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: MediaQuery.of(context).size.width / 2.5,
            height: MediaQuery.of(context).size.height / 15.1,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(155, 160, 102, 180),
                minimumSize: const Size(190, 65),
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Home_Page_Arabic()));
              },
              child: const Text(
                "تعلم",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Lobster',
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Container(
            width: MediaQuery.of(context).size.width / 2.5,
            height: MediaQuery.of(context).size.height / 15.1,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(155, 160, 102, 180),
                minimumSize: const Size(190, 65),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => QuizArabic()));
              },
              child: const Text(
                "الاختبارات",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Lobster',
                ),
              ),
            ),
          ),
        ],
      ),
      const SizedBox(
        height: 30,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: MediaQuery.of(context).size.width / 2.5,
            height: MediaQuery.of(context).size.height / 15.1,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(155, 160, 102, 180),
                minimumSize: const Size(190, 65),
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Home_Page_English()));
              },
              child: const Text(
                "Learn",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Lobster',
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Container(
            width: MediaQuery.of(context).size.width / 2.5,
            height: MediaQuery.of(context).size.height / 15.1,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(155, 160, 102, 180),
                minimumSize: const Size(190, 65),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => QuizEng()));
              },
              child: const Text(
                "Quizzes",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Lobster',
                ),
              ),
            ),
          ),
        ],
      ),
    ],
  );
}

Widget buildTabletLayout(BuildContext context) {
  return Column(
    children: [
      Container(
        height: 770,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/intro.jpg"),
            fit: BoxFit.fill,
          ),
        ),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: MediaQuery.of(context).size.width / 4,
            height: MediaQuery.of(context).size.height / 15.1,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(155, 160, 102, 180),
                minimumSize: const Size(190, 65),
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Home_Page_Arabic()));
              },
              child: const Text(
                "تعلم",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Lobster',
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Container(
            width: MediaQuery.of(context).size.width / 4,
            height: MediaQuery.of(context).size.height / 15.1,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(155, 160, 102, 180),
                minimumSize: const Size(190, 65),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => QuizArabic()));
              },
              child: const Text(
                "الاختبارات",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Lobster',
                ),
              ),
            ),
          ),
        ],
      ),
      const SizedBox(
        height: 50,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: MediaQuery.of(context).size.width / 4,
            height: MediaQuery.of(context).size.height / 15.1,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(155, 160, 102, 180),
                minimumSize: const Size(190, 65),
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Home_Page_English()));
              },
              child: const Text(
                "Learn",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Lobster',
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Container(
            width: MediaQuery.of(context).size.width / 4,
            height: MediaQuery.of(context).size.height / 15.1,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(155, 160, 102, 180),
                minimumSize: const Size(190, 65),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => QuizEng()));
              },
              child: const Text(
                "Quizzes",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Lobster',
                ),
              ),
            ),
          ),
        ],
      ),
    ],
  );
}

Widget buildDesktopLayout(BuildContext context) {
  return Column(
    children: [
      Container(
        height: 900,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/intro.jpg"),
            fit: BoxFit.fill,
          ),
        ),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: MediaQuery.of(context).size.width / 4,
            height: MediaQuery.of(context).size.height / 15.1,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(155, 160, 102, 180),
                minimumSize: const Size(190, 65),
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Home_Page_Arabic()));
              },
              child: const Text(
                "تعلم",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Lobster',
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Container(
            width: MediaQuery.of(context).size.width / 4,
            height: MediaQuery.of(context).size.height / 15.1,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(155, 160, 102, 180),
                minimumSize: const Size(190, 65),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => QuizArabic()));
              },
              child: const Text(
                "الاختبارات",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Lobster',
                ),
              ),
            ),
          ),
        ],
      ),
      const SizedBox(
        height: 50,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: MediaQuery.of(context).size.width / 4,
            height: MediaQuery.of(context).size.height / 15.1,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(155, 160, 102, 180),
                minimumSize: const Size(190, 65),
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Home_Page_English()));
              },
              child: const Text(
                "Learn",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Lobster',
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Container(
            width: MediaQuery.of(context).size.width / 4,
            height: MediaQuery.of(context).size.height / 15.1,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(155, 160, 102, 180),
                minimumSize: const Size(190, 65),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => QuizEng()));
              },
              child: const Text(
                "Quizzes",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Lobster',
                ),
              ),
            ),
          ),
        ],
      ),
    ],
  );
}









/* Expanded(
            flex: 0,
            child: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Container(
                width: 250,
                height: 70,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(155, 160, 102, 180),
                    minimumSize: const Size(190, 65),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Home_Page_Arabic()));
                  },
                  child: const Text(
                    "العربيه",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Lobster',
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 0,
            child: Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Container(
                width: 250,
                height: 70,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(155, 160, 102, 180),
                    minimumSize: const Size(190, 65),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Home_Page_English()));
                  },
                  child: const Text(
                    "English",
                    style: TextStyle(
                      fontSize: 30,
                      //fontWeight: FontWeight.bold,
                      fontFamily: 'Lobster',
                    ),
                  ),
                ),
              ),
            ),
          ),*/
        














































































































































































































































/*class Welcome_Page extends StatefulWidget {
  const Welcome_Page({super.key});

//  @override
  //State<Welcome_Page> createState() => _Welcome_PageState();
}

class _Welcome_PageState extends State<Welcome_Page>
    with TickerProviderStateMixin {
  //late final AnimationController _controller;

  @override
  /*void initState() {
    // TODO: implement initState
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: Duration(minutes: 5));
    _controller.forward();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _controller.dispose();
    super.dispose();
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XffF3F6F8),
      body: Column(
        children: [
          /*Lottie.network(
              'https://lottie.host/a6d6a942-9010-4204-9dd8-4bb489dd1a24/IrZ78Q4rkf.json',
              controller: _controller, onLoaded: (compos) {
            _controller
              ..duration = compos.duration
              ..forward();
          }),*/

          Container(
            height: 380,
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/welcome4.png"),
                fit: BoxFit.fill,
              ),
            ),
            // Foreground widget here
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Container(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 226, 170, 234),
                  minimumSize: const Size(190, 65),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Home_Page_Arabic()));
                },
                child: const Text(
                  "العربيه",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Container(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 226, 170, 234),
                  minimumSize: const Size(190, 65),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Home_Page_English()));
                },
                child: const Text(
                  "English",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
*/