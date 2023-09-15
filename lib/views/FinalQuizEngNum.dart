import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:learn_me_signs/util/Binding_appEngNum.dart';
import 'package:learn_me_signs/views/QuizScreenEngNum.dart';
import 'package:learn_me_signs/views/ResualtScreenEngNum.dart';
import 'package:learn_me_signs/views/WelcomeQuizEngNum.dart';

class FinalQuizEngNum extends StatelessWidget {
  const FinalQuizEngNum({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialBinding: Binding_appNumEng(),
      title: 'Flutter Quiz App',
      home: WelcomeScreenEngNum(),
      getPages: [
        GetPage(
            name: WelcomeScreenEngNum.routeName,
            page: () => WelcomeScreenEngNum()),
        GetPage(
            name: QuizScreenEngNum.routeName, page: () => QuizScreenEngNum()),
        GetPage(
            name: ResultScreenEngNum.routeName,
            page: () => ResultScreenEngNum()),
      ],
    );
  }
}
