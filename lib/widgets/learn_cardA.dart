import 'package:flutter/material.dart';

class LearnCardA extends StatelessWidget {
  final String image;
  //final String label;
  final double left;
  final Color color;
  final Function()? ontap;
  LearnCardA(
      {required this.image,
      //required this.label,
      this.left = 28.0,
      required this.color,
      required this.ontap});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: const Color.fromARGB(255, 190, 120, 200),
                width: 3,
              ),
              borderRadius: BorderRadius.circular(12),
            ),
            child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(20.0)),
              child: Image.asset(
                image,
                width: MediaQuery.of(context).size.width / 2.5,
                height: MediaQuery.of(context).size.height / 6.4,
                fit: BoxFit.fill,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
