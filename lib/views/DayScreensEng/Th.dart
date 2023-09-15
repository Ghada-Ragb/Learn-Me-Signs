import 'package:flutter/material.dart';

class ThEng extends StatelessWidget {
  const ThEng({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 246, 240, 252),
      body: Padding(
        padding: const EdgeInsets.only(left: 20.0, top: 60.0, right: 20.0),
        child: Center(
          child: Column(
            children: <Widget>[
              const Card(
                shadowColor: Color.fromARGB(155, 9, 9, 9),
                elevation: 12,
                color: Color.fromARGB(244, 235, 220, 241),
                shape: BeveledRectangleBorder(),
                child: Text(
                  "\t\t\t Thursday\t\t\t",
                  style: TextStyle(
                    fontSize: 40.0,
                    fontFamily: 'Lobster',
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Card(
                shadowColor: const Color.fromARGB(155, 9, 9, 9),
                //shape:
                // BeveledRectangleBorder(borderRadius: BorderRadius.circular(45)),
                shape: ContinuousRectangleBorder(
                    borderRadius: BorderRadius.circular(150)),
                elevation: 100,
                color: const Color.fromARGB(244, 239, 224, 245),
                child: Container(
                  height: MediaQuery.of(context).size.height / 1.3,
                  width: MediaQuery.of(context).size.width / 1.4,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color.fromARGB(255, 190, 120, 200),
                      width: 3,
                    ),
                    image: const DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage("assets/images/DayEng/Th.jpg"),
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
