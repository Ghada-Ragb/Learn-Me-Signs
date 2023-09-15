import 'package:flutter/material.dart';
import 'package:learn_me_signs/model/NumArabicModel.dart';

class NumArabicCards extends StatelessWidget {
  const NumArabicCards({super.key, required this.category2});

  final NumArabicModel category2;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(50),
      child: Container(
        height: 620.0,
        width: 320.0,
        child: Card(
          shadowColor: const Color.fromARGB(155, 9, 9, 9),
          //shape:
          // BeveledRectangleBorder(borderRadius: BorderRadius.circular(45)),
          shape: ContinuousRectangleBorder(
              borderRadius: BorderRadius.circular(150)),
          elevation: 12,
          color: const Color.fromARGB(244, 239, 224, 245),
          child: Padding(
            padding: const EdgeInsets.all(50),
            child: Container(
              height: 520.0,
              width: 290.0,
              decoration: BoxDecoration(
                border: Border.all(
                  color: const Color.fromARGB(155, 160, 102, 180),
                  width: 3,
                ),
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(category2.image),
                ),
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
