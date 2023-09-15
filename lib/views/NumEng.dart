import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:learn_me_signs/views/AlpaEng.dart';
import 'package:learn_me_signs/views/ColorEngMenu.dart';
import 'package:learn_me_signs/views/DaysEngMenu.dart';
import 'package:learn_me_signs/views/FinalQuizEngNum.dart';
import 'package:learn_me_signs/views/Welcome_Page.dart';

class NumEng extends StatefulWidget {
  const NumEng({super.key});

  @override
  State<NumEng> createState() => _NumEngState();
}

class _NumEngState extends State<NumEng> {
  final UrlImagesNumEng = const [
    "assets/images/NumEngNew/zero.jpg",
    "assets/images/NumEngNew/one.jpg",
    "assets/images/NumEngNew/two.jpg",
    "assets/images/NumEngNew/three.jpg",
    "assets/images/NumEngNew/four.jpg",
    "assets/images/NumEngNew/five.jpg",
    "assets/images/NumEngNew/six.jpg",
    "assets/images/NumEngNew/seven.jpg",
    "assets/images/NumEngNew/eight.jpg",
    "assets/images/NumEngNew/nine.jpg",
    "assets/images/NumEngNew/ten.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 253, 248, 253),
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
            '\t Numbers\t',
            style: TextStyle(
              color:
                  Color.fromARGB(155, 160, 102, 180), //fontFamily: 'Pacifico',
              fontSize: 45,
              fontFamily: 'Lobster',
              fontWeight: FontWeight.bold,
              //fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CarouselSlider.builder(
              itemCount: UrlImagesNumEng.length,
              options: CarouselOptions(
                height: MediaQuery.of(context).size.height / 1.5,
                autoPlay: true,
                reverse: true,
                autoPlayInterval: Duration(seconds: 2),
                enlargeCenterPage: true,
              ),
              itemBuilder: (context, index, realIndex) {
                final UrlImageNumEng = UrlImagesNumEng[index];
                return buildImageNumEng(UrlImageNumEng, index);
              },
            ),
          ],
        ),
      ),
      drawer: const NavigationBarDrawer(),
    );
  }

  Widget buildImageNumEng(String UrlImage, int index) => Card(
        shape: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25),
          borderSide: BorderSide(
            color: Color.fromARGB(155, 160, 102, 180),
            width: 4,
          ),
        ),
        margin: EdgeInsets.symmetric(horizontal: 5),
        elevation: 12,
        shadowColor: Color.fromARGB(155, 9, 9, 9),
        child: Container(
          //margin: EdgeInsets.symmetric(horizontal: 50),
          width: MediaQuery.of(context).size.width / 0.9,
          height: MediaQuery.of(context).size.height / 1.5,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(UrlImage),
            ),
            borderRadius: BorderRadius.circular(30),
          ),
        ),
      );
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
                leading: const Icon(
                  Icons.article_rounded,
                ),
                title: const Text(
                  "Alphabets",
                  style: TextStyle(
                    color: Color.fromARGB(155, 160, 102, 180),
                    fontSize: 28,
                    fontFamily: 'Lobster',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Alpa_Eng()));
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
                  Icons.article_rounded,
                ),
                title: const Text(
                  "Colors",
                  style: TextStyle(
                    color: Color.fromARGB(155, 160, 102, 180),
                    fontSize: 28,
                    fontFamily: 'Lobster',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ColorsEngMenu()));
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
                  Icons.article_rounded,
                ),
                title: const Text(
                  " Days of week",
                  style: TextStyle(
                    color: Color.fromARGB(155, 160, 102, 180),
                    fontSize: 28,
                    fontFamily: 'Lobster',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => DayEngMenu()));
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
                  "Quiz Numbers",
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
                          builder: (context) => FinalQuizEngNum()));
                },
              ),
            ),
          ],
        ),
      );
}
/* final List<NumEngModel> categories2 = const [
    NumEngModel(image: "assets/images/NumbersEng/one.jpg"),
    NumEngModel(image: "assets/images/NumbersEng/two.jpg"),
    NumEngModel(image: "assets/images/NumbersEng/three.jpg"),
    NumEngModel(image: "assets/images/NumbersEng/four.jpg"),
    NumEngModel(image: "assets/images/NumbersEng/five.jpg"),
    NumEngModel(image: "assets/images/NumbersEng/six.jpg"),
    NumEngModel(image: "assets/images/NumbersEng/seven.jpg"),
    NumEngModel(image: "assets/images/NumbersEng/eight.jpg"),
    NumEngModel(image: "assets/images/NumbersEng/nine.jpg"),
    NumEngModel(image: "assets/images/NumbersEng/ten.jpg"),
  ];

SizedBox(
        height: 620.0,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories2.length,
          itemBuilder: (context, index) {
            return NumEngCards(
              category2: categories2[index],
            );
          },
        ),
      ),*/
