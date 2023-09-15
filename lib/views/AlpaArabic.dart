import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:learn_me_signs/views/ColorArabicMenu.dart';
import 'package:learn_me_signs/views/DayArabicMenu.dart';
import 'package:learn_me_signs/views/FinalQuiz.dart';
import 'package:learn_me_signs/views/NumArabic.dart';
import 'package:learn_me_signs/views/Welcome_Page.dart';

class Alpa_Arabic extends StatefulWidget {
  const Alpa_Arabic({super.key});

  @override
  State<Alpa_Arabic> createState() => _Alpa_ArabicState();
}

class _Alpa_ArabicState extends State<Alpa_Arabic> {
  //final controller = CarouselController();

  final UrlImages = const [
    "assets/images/AlpaArabic/Alef.jpg",
    "assets/images/AlpaArabic/Ba.jpg",
    "assets/images/AlpaArabic/ta.jpg",
    "assets/images/AlpaArabic/tha.jpg",
    "assets/images/AlpaArabic/gim.jpg",
    "assets/images/AlpaArabic/ha.jpg",
    "assets/images/AlpaArabic/kha.jpg",
    "assets/images/AlpaArabic/dal.jpg",
    "assets/images/AlpaArabic/zal.jpg",
    "assets/images/AlpaArabic/raa.jpg",
    "assets/images/AlpaArabic/zen.jpg",
    "assets/images/AlpaArabic/sen.jpg",
    "assets/images/AlpaArabic/shen.jpg",
    "assets/images/AlpaArabic/sad.jpg",
    "assets/images/AlpaArabic/dadd.jpg",
    "assets/images/AlpaArabic/dah.jpg",
    "assets/images/AlpaArabic/zah.jpg",
    "assets/images/AlpaArabic/aen.jpg",
    "assets/images/AlpaArabic/gen.jpg",
    "assets/images/AlpaArabic/fa.jpg",
    "assets/images/AlpaArabic/af.jpg",
    "assets/images/AlpaArabic/aff.jpg",
    "assets/images/AlpaArabic/lam.jpg",
    "assets/images/AlpaArabic/mem.jpg",
    "assets/images/AlpaArabic/non.jpg",
    "assets/images/AlpaArabic/haah.jpg",
    "assets/images/AlpaArabic/waw.jpg",
    "assets/images/AlpaArabic/yaa.jpg",
    "assets/images/AlpaArabic/ta2.jpg",
    "assets/images/AlpaArabic/el.jpg",
    "assets/images/AlpaArabic/amza.jpg",
    "assets/images/AlpaArabic/no.jpg",
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
            '🌸الحروف🌸',
            style: TextStyle(
              color:
                  Color.fromARGB(155, 160, 102, 180), //fontFamily: 'Pacifico',
              fontSize: 45,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CarouselSlider.builder(
              itemCount: UrlImages.length,
              options: CarouselOptions(
                height: MediaQuery.of(context).size.height / 1.5,
                autoPlay: true,
                reverse: true,
                autoPlayInterval: Duration(seconds: 2),
                enlargeCenterPage: true,
              ),
              itemBuilder: (context, index, realIndex) {
                final UrlImage = UrlImages[index];
                return buildImage(UrlImage, index);
              },
            ),
          ],
        ),
      ),
      drawer: const NavigationBarDrawer(),
    );
  }

  Widget buildImage(String UrlImage, int index) => Card(
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
          // margin: EdgeInsets.symmetric(vertical: 7),
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
                  "الارقام",
                  style: TextStyle(
                    color: Color.fromARGB(155, 160, 102, 180),
                    fontSize: 28,
                    fontFamily: 'Lobster',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => NumArabic()));
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
                  "اختبار الحروف",
                  style: TextStyle(
                    color: Color.fromARGB(155, 160, 102, 180),
                    fontSize: 28,
                    fontFamily: 'Lobster',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => FinalQuiz()));
                },
              ),
            ),
          ],
        ),
      );
}




/*/* final List<AlpaArabicModel> categories = const [
    AlpaArabicModel(image: "assets/images/AlpaArabic/Alef.jpg"),
    AlpaArabicModel(image: "assets/images/AlpaArabic/Ba.jpg"),
    AlpaArabicModel(image: "assets/images/AlpaArabic/ta.jpg"),
    AlpaArabicModel(image: "assets/images/AlpaArabic/tha.jpg"),
    AlpaArabicModel(image: "assets/images/AlpaArabic/gim.jpg"),
    AlpaArabicModel(image: "assets/images/AlpaArabic/ha.jpg"),
    AlpaArabicModel(image: "assets/images/AlpaArabic/kha.jpg"),
    AlpaArabicModel(image: "assets/images/AlpaArabic/dal.jpg"),
    AlpaArabicModel(image: "assets/images/AlpaArabic/zal.jpg"),
    AlpaArabicModel(image: "assets/images/AlpaArabic/raa.jpg"),
    AlpaArabicModel(image: "assets/images/AlpaArabic/zen.jpg"),
    AlpaArabicModel(image: "assets/images/AlpaArabic/sen.jpg"),
    AlpaArabicModel(image: "assets/images/AlpaArabic/shen.jpg"),
    AlpaArabicModel(image: "assets/images/AlpaArabic/sad.jpg"),
    AlpaArabicModel(image: "assets/images/AlpaArabic/dadd.jpg"),
    AlpaArabicModel(image: "assets/images/AlpaArabic/dah.jpg"),
    AlpaArabicModel(image: "assets/images/AlpaArabic/zah.jpg"),
    AlpaArabicModel(image: "assets/images/AlpaArabic/aen.jpg"),
    AlpaArabicModel(image: "assets/images/AlpaArabic/gen.jpg"),
    AlpaArabicModel(image: "assets/images/AlpaArabic/fa.jpg"),
    AlpaArabicModel(image: "assets/images/AlpaArabic/af.jpg"),
    AlpaArabicModel(image: "assets/images/AlpaArabic/aff.jpg"),
    AlpaArabicModel(image: "assets/images/AlpaArabic/lam.jpg"),
    AlpaArabicModel(image: "assets/images/AlpaArabic/mem.jpg"),
    AlpaArabicModel(image: "assets/images/AlpaArabic/non.jpg"),
    AlpaArabicModel(image: "assets/images/AlpaArabic/haah.jpg"),
    AlpaArabicModel(image: "assets/images/AlpaArabic/waw.jpg"),
    AlpaArabicModel(image: "assets/images/AlpaArabic/yaa.jpg"),
    AlpaArabicModel(image: "assets/images/AlpaArabic/ta2.jpg"),
    AlpaArabicModel(image: "assets/images/AlpaArabic/el.jpg"),
    AlpaArabicModel(image: "assets/images/AlpaArabic/amza.jpg"),
    AlpaArabicModel(image: "assets/images/AlpaArabic/no.jpg"),

  ];*/

 /*Widget buildImageSlider() => CarouselSlider.builder(
        carouselController: controller,
        itemCount: UrlImages.length,
        itemBuilder: (context, index, realIndex) {
          final UrlImage = UrlImages[index];
          return buildImage(UrlImage, index);
        },
        options: CarouselOptions(
          height: 200,
          initialPage: 0,
          enlargeCenterPage: true,
        ),
      );*/
  /* Widget BuildButton({bool stretch = false}) => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: Pervious,
            child: Icon(
              Icons.arrow_back,
              size: 32,
            ),
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(
                horizontal: 32,
                vertical: 32,
              ),
            ),
          ),
          stretch
              ? Spacer()
              : SizedBox(
                  width: 32,
                ),
          ElevatedButton(
            onPressed: next,
            child: Icon(
              Icons.arrow_back,
              size: 32,
            ),
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(
                horizontal: 32,
                vertical: 32,
              ),
            ),
          ),
        ],
      );
  void Pervious() =>
      controller.previousPage(duration: Duration(microseconds: 500));
  void next() => controller.nextPage(duration: Duration(milliseconds: 500));*/

  /*body: SizedBox(
        height: 620.0,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return AlpaArabicCards(
              category: categories[index],
            );
          },
        ),
      ),*/
      */