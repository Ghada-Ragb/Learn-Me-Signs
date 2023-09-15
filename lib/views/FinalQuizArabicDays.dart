import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:learn_me_signs/util/Binding_appDays.dart';
import 'package:learn_me_signs/views/QuizScreenArabicDays.dart';
import 'package:learn_me_signs/views/ResualtScreenArabicDays.dart';
import 'package:learn_me_signs/views/WelcomeQuizArabicDays.dart';

class FinalQuizDays extends StatelessWidget {
  const FinalQuizDays({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialBinding: BilndingsAppDays(),
      title: 'Flutter Quiz App',
      home: WelcomeScreenArabicDays(),
      getPages: [
        GetPage(
            name: WelcomeScreenArabicDays.routeName,
            page: () => WelcomeScreenArabicDays()),
        GetPage(
            name: QuizScreenArabicDays.routeName,
            page: () => QuizScreenArabicDays()),
        GetPage(
            name: ResultScreenArabicDays.routeName,
            page: () => ResultScreenArabicDays()),
      ],
    );
  }
}
