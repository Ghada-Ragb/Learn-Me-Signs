import 'package:flutter/material.dart';
import 'package:learn_me_signs/model/AlpaEngModel.dart';

class AlpaEngCards extends StatelessWidget {
  const AlpaEngCards({super.key, required this.category});

  final AlpaEngModel category;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(60),
      child: Container(
        height: 520.0,
        width: 290.0,
        decoration: BoxDecoration(
          border: Border.all(
            color: const Color.fromARGB(255, 190, 120, 200),
            width: 4,
          ),
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(category.image),
          ),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}
