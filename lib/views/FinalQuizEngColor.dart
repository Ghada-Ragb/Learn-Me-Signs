import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:learn_me_signs/util/Binding_appEngColor.dart';
import 'package:learn_me_signs/views/QuizScreenEngColor.dart';
import 'package:learn_me_signs/views/ResualtScreenEngColor.dart';
import 'package:learn_me_signs/views/WelcomeQuizEngColor.dart';

class FinalQuizEngColor extends StatelessWidget {
  const FinalQuizEngColor({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialBinding: Binding_appEngColor(),
      title: 'Flutter Quiz App',
      home: WelcomeScreenEngColor(),
      getPages: [
        GetPage(
            name: WelcomeScreenEngColor.routeName,
            page: () => WelcomeScreenEngColor()),
        GetPage(
            name: QuizScreenEngColor.routeName,
            page: () => QuizScreenEngColor()),
        GetPage(
            name: ResultScreenEngColor.routeName,
            page: () => ResultScreenEngColor()),
      ],
    );
  }
}
