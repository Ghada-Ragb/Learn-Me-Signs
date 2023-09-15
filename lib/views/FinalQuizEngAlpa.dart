import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:learn_me_signs/util/Binding_appAlpaEng.dart';
import 'package:learn_me_signs/views/QuizScreenEngAlpa.dart';
import 'package:learn_me_signs/views/ResualtScreenEngAlpa.dart';
import 'package:learn_me_signs/views/WelcomeQuizEngAlpa.dart';

class FinalQuizEngAlpa extends StatelessWidget {
  const FinalQuizEngAlpa({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialBinding: Binding_appAlpaEng(),
      title: 'Flutter Quiz App',
      home: WelcomeScreenEngAlpa(),
      getPages: [
        GetPage(
            name: WelcomeScreenEngAlpa.routeName,
            page: () => WelcomeScreenEngAlpa()),
        GetPage(
            name: QuizScreenEngAlpa.routeName, page: () => QuizScreenEngAlpa()),
        GetPage(
            name: ResultScreenEngAlpa.routeName,
            page: () => ResultScreenEngAlpa()),
      ],
    );
  }
}
