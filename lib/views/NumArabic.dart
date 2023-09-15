import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:learn_me_signs/views/AlpaArabic.dart';
import 'package:learn_me_signs/views/ColorArabicMenu.dart';
import 'package:learn_me_signs/views/DayArabicMenu.dart';
import 'package:learn_me_signs/views/FinalQuizNum.dart';
import 'package:learn_me_signs/views/Welcome_Page.dart';

class NumArabic extends StatefulWidget {
  const NumArabic({super.key});

  @override
  State<NumArabic> createState() => _NumArabicState();
}

class _NumArabicState extends State<NumArabic> {
  final UrlImagesNumArabic = const [
    "assets/images/NumArabic/zero.jpg",
    "assets/images/NumArabic/one.jpg",
    "assets/images/NumArabic/two.jpg",
    "assets/images/NumArabic/three.jpg",
    "assets/images/NumArabic/four.jpg",
    "assets/images/NumArabic/five.jpg",
    "assets/images/NumArabic/six.jpg",
    "assets/images/NumArabic/seven.jpg",
    "assets/images/NumArabic/eight.jpg",
    "assets/images/NumArabic/nine.jpg",
    "assets/images/NumArabic/ten.jpg",
    "assets/images/NumArabic/eleven.jpg",
    "assets/images/NumArabic/twelev.jpg",
    "assets/images/NumArabic/threeten.jpg",
    "assets/images/NumArabic/fourteen.jpg",
    "assets/images/NumArabic/fiveteen.jpg",
    "assets/images/NumArabic/sixteen.jpg",
    "assets/images/NumArabic/seventeen.jpg",
    "assets/images/NumArabic/eighteen.jpg",
    "assets/images/NumArabic/nineteen.jpg",
    "assets/images/NumArabic/twentey.jpg",
    "assets/images/NumArabic/threety.jpg",
    "assets/images/NumArabic/thosand.jpg",
    "assets/images/NumArabic/thounndzero.jpg",
    "assets/images/NumArabic/thoundtwozero.jpg",
    "assets/images/NumArabic/onetow.jpg",
    "assets/images/NumArabic/onethree.jpg",
    "assets/images/NumArabic/onefour.jpg",
    "assets/images/NumArabic/onefive.jpg",
    "assets/images/NumArabic/onesix.jpg",
    "assets/images/NumArabic/oneseven.jpg",
    "assets/images/NumArabic/oneeight.jpg",
    "assets/images/NumArabic/onenine.jpg",
    "assets/images/NumArabic/oneten.jpg",
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
            '🌸الارقام🌸',
            style: TextStyle(
              color:
                  Color.fromARGB(155, 160, 102, 180), //fontFamily: 'Pacifico',
              fontSize: 45,
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
              itemCount: UrlImagesNumArabic.length,
              options: CarouselOptions(
                height: MediaQuery.of(context).size.height / 1.5,
                autoPlay: true,
                reverse: true,
                autoPlayInterval: Duration(seconds: 2),
                enlargeCenterPage: true,
              ),
              itemBuilder: (context, index, realIndex) {
                final UrlImageNumArabic = UrlImagesNumArabic[index];
                return buildImageNumArabic(UrlImageNumArabic, index);
              },
            ),
          ],
        ),
      ),
      drawer: const NavigationBarDrawer(),
    );
  }

  Widget buildImageNumArabic(String UrlImage, int index) => Card(
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
                  Icons.apps,
                ),
                title: const Text(
                  "الحروف",
                  style: TextStyle(
                    color: Color.fromARGB(155, 160, 102, 180),
                    fontSize: 28,
                    fontFamily: 'Lobster',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Alpa_Arabic()));
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
                  Icons.apps,
                ),
                title: const Text(
                  "الالوان",
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
                          builder: (context) => ColorsArabicMenu()));
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
                  Icons.apps,
                ),
                title: const Text(
                  "ايام الاسبوع",
                  style: TextStyle(
                    color: Color.fromARGB(155, 160, 102, 180),
                    fontSize: 28,
                    fontFamily: 'Lobster',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => DayArabicMenu()));
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
                  "اختبار الارقام",
                  style: TextStyle(
                    color: Color.fromARGB(155, 160, 102, 180),
                    fontSize: 28,
                    fontFamily: 'Lobster',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => FinalQuizNum()));
                },
              ),
            ),
          ],
        ),
      );
}


/* final List<NumArabicModel> categories2 = const [
    NumArabicModel(image: "assets/images/NumArabic/zero.jpg"),
    NumArabicModel(image: "assets/images/NumArabic/one.jpg"),
    NumArabicModel(image: "assets/images/NumArabic/two.jpg"),
    NumArabicModel(image: "assets/images/NumArabic/three.jpg"),
    NumArabicModel(image: "assets/images/NumArabic/four.jpg"),
    NumArabicModel(image: "assets/images/NumArabic/five.jpg"),
    NumArabicModel(image: "assets/images/NumArabic/six.jpg"),
    NumArabicModel(image: "assets/images/NumArabic/seven.jpg"),
    NumArabicModel(image: "assets/images/NumArabic/eight.jpg"),
    NumArabicModel(image: "assets/images/NumArabic/nine.jpg"),
    NumArabicModel(image: "assets/images/NumArabic/ten.jpg"),
    NumArabicModel(image: "assets/images/NumArabic/eleven.jpg"),
    NumArabicModel(image: "assets/images/NumArabic/twelev.jpg"),
    NumArabicModel(image: "assets/images/NumArabic/threeten.jpg"),
    NumArabicModel(image: "assets/images/NumArabic/fourteen.jpg"),
    NumArabicModel(image: "assets/images/NumArabic/fiveteen.jpg"),
    NumArabicModel(image: "assets/images/NumArabic/sixteen.jpg"),
    NumArabicModel(image: "assets/images/NumArabic/seventeen.jpg"),
    NumArabicModel(image: "assets/images/NumArabic/eighteen.jpg"),
    NumArabicModel(image: "assets/images/NumArabic/nineteen.jpg"),
    NumArabicModel(image: "assets/images/NumArabic/twentey.jpg"),
    NumArabicModel(image: "assets/images/NumArabic/threety.jpg"),
    NumArabicModel(image: "assets/images/NumArabic/thosand.jpg"),
    NumArabicModel(image: "assets/images/NumArabic/thounndzero.jpg"),
    NumArabicModel(image: "assets/images/NumArabic/thoundtwozero.jpg"),
    NumArabicModel(image: "assets/images/NumArabic/onetow.jpg"),
    NumArabicModel(image: "assets/images/NumArabic/onethree.jpg"),
    NumArabicModel(image: "assets/images/NumArabic/onefour.jpg"),
    NumArabicModel(image: "assets/images/NumArabic/onefive.jpg"),
    NumArabicModel(image: "assets/images/NumArabic/onesix.jpg"),
    NumArabicModel(image: "assets/images/NumArabic/oneseven.jpg"),
    NumArabicModel(image: "assets/images/NumArabic/oneeight.jpg"),
    NumArabicModel(image: "assets/images/NumArabic/onenine.jpg"),
    NumArabicModel(image: "assets/images/NumArabic/oneten.jpg"),
  ];*/
