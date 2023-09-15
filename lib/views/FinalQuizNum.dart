import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:learn_me_signs/util/Binding_appNum.dart';
import 'package:learn_me_signs/views/QuizArabicScreenNum.dart';
import 'package:learn_me_signs/views/ResualtScreenArabicNum.dart';
import 'package:learn_me_signs/views/WelcomeQuizArabicNum.dart';

class FinalQuizNum extends StatelessWidget {
  const FinalQuizNum({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialBinding: BilndingsAppNum(),
      title: 'Flutter Quiz App',
      home: WelcomeScreenArabicNum(),
      getPages: [
        GetPage(
            name: WelcomeScreenArabicNum.routeName,
            page: () => WelcomeScreenArabicNum()),
        GetPage(
            name: QuizScreenArabicNum.routeName,
            page: () => QuizScreenArabicNum()),
        GetPage(
            name: ResultScreenArabicNum.routeName,
            page: () => ResultScreenArabicNum()),
      ],
    );
  }
}
