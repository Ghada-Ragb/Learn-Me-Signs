import 'package:flutter/material.dart';
import 'package:learn_me_signs/views/AlpaEng.dart';
import 'package:learn_me_signs/views/NumEng.dart';

class MenuEnglish extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 90,
        backgroundColor: const Color.fromARGB(255, 190, 120, 200),
        title: const Center(
          child: Text(
            '🌸Choose a category🌸',
            style: TextStyle(
              fontSize: 27.0,
              //fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 29, 29, 29),
            ),
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(left: 20.0, top: 40.0, right: 20.0),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Alpa_Eng()));
                },
                child: Stack(
                  children: [
                    Container(
                      height: 150,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20.0)),
                        border: Border.all(
                          color: const Color.fromARGB(255, 190, 120, 200),
                          width: 3,
                        ),
                      ),
                      child: ClipRRect(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20.0)),
                        child: Image.asset(
                          'assets/images/alphabet.png',
                          height: 150.0,
                          width: 900,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    const Positioned(
                      left: 35.0,
                      bottom: 15.0,
                      child: Text(
                        'Alphabets',
                        style: TextStyle(
                          fontSize: 35.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Lobster',
                          color: Color.fromARGB(255, 190, 60, 199),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => NumEng()));
                },
                child: Stack(
                  children: [
                    Container(
                      height: 150,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20.0)),
                        border: Border.all(
                          color: const Color.fromARGB(255, 190, 120, 200),
                          width: 3,
                        ),
                      ),
                      child: ClipRRect(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20.0)),
                        child: Image.asset(
                          'assets/images/numbers.png',
                          height: 250.0,
                          width: 900,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    const Positioned(
                      left: 35.0,
                      bottom: 15.0,
                      child: Text(
                        'Numbers',
                        style: TextStyle(
                          fontSize: 35.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Lobster',
                          color: Color.fromARGB(255, 67, 41, 216),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              GestureDetector(
                onTap: () {
                  /*Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MenuArabic()));*/
                },
                child: Stack(
                  children: [
                    Container(
                      height: 150,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20.0)),
                        border: Border.all(
                          color: const Color.fromARGB(255, 190, 120, 200),
                          width: 3,
                        ),
                      ),
                      child: ClipRRect(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20.0)),
                        child: Image.asset(
                          'assets/images/colors.png',
                          height: 250.0,
                          width: 900,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    const Positioned(
                      left: 35.0,
                      bottom: 15.0,
                      child: Text(
                        'Colors',
                        style: TextStyle(
                          fontSize: 35.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Lobster',
                          color: Color.fromARGB(255, 229, 55, 133),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              GestureDetector(
                onTap: () {
                  /*Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MenuArabic()));*/
                },
                child: Stack(
                  children: [
                    Container(
                      height: 150,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20.0)),
                        border: Border.all(
                          color: const Color.fromARGB(255, 190, 120, 200),
                          width: 3,
                        ),
                      ),
                      child: ClipRRect(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20.0)),
                        child: Image.asset(
                          'assets/images/days.png',
                          height: 250.0,
                          width: 900,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    const Positioned(
                      left: 35.0,
                      bottom: 5.0,
                      child: Text(
                        'Days',
                        style: TextStyle(
                          fontSize: 40.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Lobster',
                          color: Color.fromARGB(255, 37, 21, 68),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
