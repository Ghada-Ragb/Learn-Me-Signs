import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:learn_me_signs/util/Binding_appColor.dart';
import 'package:learn_me_signs/views/QuizScreenArabicColor.dart';
import 'package:learn_me_signs/views/ResualtScreenArabicColor.dart';
import 'package:learn_me_signs/views/WelcomeQuizArabicColor.dart';

class FinalQuizColor extends StatelessWidget {
  const FinalQuizColor({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialBinding: BilndingsAppColor(),
      title: 'Flutter Quiz App',
      home: WelcomeScreenArabicColor(),
      getPages: [
        GetPage(
            name: WelcomeScreenArabicColor.routeName,
            page: () => WelcomeScreenArabicColor()),
        GetPage(
            name: QuizScreenArabicColor.routeName,
            page: () => QuizScreenArabicColor()),
        GetPage(
            name: ResultScreenArabicColor.routeName,
            page: () => ResultScreenArabicColor()),
      ],
    );
  }
}
