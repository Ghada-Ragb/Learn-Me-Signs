import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:learn_me_signs/views/ColorEngMenu.dart';
import 'package:learn_me_signs/views/DaysEngMenu.dart';
import 'package:learn_me_signs/views/FinalQuizEngAlpa.dart';
import 'package:learn_me_signs/views/NumEng.dart';
import 'package:learn_me_signs/views/Welcome_Page.dart';

class Alpa_Eng extends StatefulWidget {
  const Alpa_Eng({super.key});

  @override
  State<Alpa_Eng> createState() => _Alpa_EngState();
}

class _Alpa_EngState extends State<Alpa_Eng> {
  final UrlImagesAlpaEng = const [
    "assets/images/alphabets/A.png",
    "assets/images/alphabets/B.png",
    "assets/images/alphabets/C.png",
    "assets/images/alphabets/D.png",
    "assets/images/alphabets/E.png",
    "assets/images/alphabets/F.png",
    "assets/images/alphabets/G.png",
    "assets/images/alphabets/H.png",
    "assets/images/alphabets/I.png",
    "assets/images/alphabets/J.png",
    "assets/images/alphabets/K.png",
    "assets/images/alphabets/L.png",
    "assets/images/alphabets/M.png",
    "assets/images/alphabets/N.png",
    "assets/images/alphabets/O.png",
    "assets/images/alphabets/P.png",
    "assets/images/alphabets/Q.png",
    "assets/images/alphabets/R.png",
    "assets/images/alphabets/S.png",
    "assets/images/alphabets/T.png",
    "assets/images/alphabets/U.png",
    "assets/images/alphabets/V.png",
    "assets/images/alphabets/W.png",
    "assets/images/alphabets/X.png",
    "assets/images/alphabets/Y.png",
    "assets/images/alphabets/Z.png",
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
            '\t Alphabets\t',
            style: TextStyle(
              color:
                  Color.fromARGB(155, 160, 102, 180), //fontFamily: 'Pacifico',
              fontSize: 45,
              fontWeight: FontWeight.bold,
              fontFamily: 'Lobster',
            ),
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CarouselSlider.builder(
              itemCount: UrlImagesAlpaEng.length,
              options: CarouselOptions(
                height: MediaQuery.of(context).size.height / 1.5,
                autoPlay: true,
                reverse: true,
                autoPlayInterval: Duration(seconds: 2),
                enlargeCenterPage: true,
              ),
              itemBuilder: (context, index, realIndex) {
                final UrlImageAlpaEng = UrlImagesAlpaEng[index];
                return buildImageAlpaEng(UrlImageAlpaEng, index);
              },
            ),
          ],
        ),
      ),
      drawer: const NavigationBarDrawer(),
    );
  }

  Widget buildImageAlpaEng(String UrlImage, int index) => Card(
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
          // margin: EdgeInsets.symmetric(vertical: 5),
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
                  "Numbers",
                  style: TextStyle(
                    color: Color.fromARGB(155, 160, 102, 180),
                    fontSize: 28,
                    fontFamily: 'Lobster',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => NumEng()));
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
                  "Quiz Alphabets",
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
                          builder: (context) => FinalQuizEngAlpa()));
                },
              ),
            ),
          ],
        ),
      );
}


/*final List<AlpaEngModel> categories = const [
    AlpaEngModel(image: "assets/images/alphabets/A.png"),
    AlpaEngModel(image: "assets/images/alphabets/B.png"),
    AlpaEngModel(image: "assets/images/alphabets/C.png"),
    AlpaEngModel(image: "assets/images/alphabets/D.png"),
    AlpaEngModel(image: "assets/images/alphabets/E.png"),
    AlpaEngModel(image: "assets/images/alphabets/F.png"),
    AlpaEngModel(image: "assets/images/alphabets/G.png"),
    AlpaEngModel(image: "assets/images/alphabets/H.png"),
    AlpaEngModel(image: "assets/images/alphabets/I.png"),
    AlpaEngModel(image: "assets/images/alphabets/J.png"),
    AlpaEngModel(image: "assets/images/alphabets/K.png"),
    AlpaEngModel(image: "assets/images/alphabets/L.png"),
    AlpaEngModel(image: "assets/images/alphabets/M.png"),
    AlpaEngModel(image: "assets/images/alphabets/N.png"),
    AlpaEngModel(image: "assets/images/alphabets/O.png"),
    AlpaEngModel(image: "assets/images/alphabets/P.png"),
    AlpaEngModel(image: "assets/images/alphabets/Q.png"),
    AlpaEngModel(image: "assets/images/alphabets/R.png"),
    AlpaEngModel(image: "assets/images/alphabets/S.png"),
    AlpaEngModel(image: "assets/images/alphabets/T.png"),
    AlpaEngModel(image: "assets/images/alphabets/U.png"),
    AlpaEngModel(image: "assets/images/alphabets/V.png"),
    AlpaEngModel(image: "assets/images/alphabets/W.png"),
    AlpaEngModel(image: "assets/images/alphabets/X.png"),
    AlpaEngModel(image: "assets/images/alphabets/Y.png"),
    AlpaEngModel(image: "assets/images/alphabets/Z.png"),
  ];
  SizedBox(
        height: 620.0,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return AlpaEngCards(
              category: categories[index],
            );
          },
        ),
      ),
  */