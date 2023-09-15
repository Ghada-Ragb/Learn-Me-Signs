import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:learn_me_signs/model/QuestionArabic.dart';
import 'package:learn_me_signs/views/ResultScreenArabicQuiz.dart';
import 'package:learn_me_signs/views/WelcomeQuizArabic.dart';

class QuizArabicAlap extends GetxController {
  String name = '';
  //question variables
  int get countOfQuestion => _questionsList.length;
  final List<QuestionArabicModel> _questionsList = [
    QuestionArabicModel(
        id: 1,
        question: "assets/images/QuizArabicAlpa/Ba.jpg",
        answer: 2,
        options: ["ا", "ن", "ب"]),
    QuestionArabicModel(
        id: 2,
        question: "assets/images/QuizArabicAlpa/aen.jpg",
        answer: 2,
        options: ['ص', 'غ', 'ع']),
    QuestionArabicModel(
        id: 3,
        question: "assets/images/QuizArabicAlpa/dadd.jpg",
        answer: 1,
        options: ["ي", "ض", "ت"]),
    QuestionArabicModel(
        id: 4,
        question: "assets/images/QuizArabicAlpa/gim.jpg",
        answer: 1,
        options: ["ح", "ج", "خ"]),
    QuestionArabicModel(
        id: 5,
        answer: 1,
        question: "assets/images/QuizArabicAlpa/no.jpg",
        options: ["س", "لا", "ه"]),
    QuestionArabicModel(
        id: 6,
        question: "assets/images/QuizArabicAlpa/raa.jpg",
        answer: 2,
        options: ["ز", "س", "ر"]),
    QuestionArabicModel(
        id: 7,
        question: "assets/images/QuizArabicAlpa/mem.jpg",
        answer: 1,
        options: ["ن", "م", "ه"]),
    QuestionArabicModel(
        id: 8,
        question: "assets/images/QuizArabicAlpa/zah.jpg",
        answer: 2,
        options: ["ط", "ث", "ظ"]),
    QuestionArabicModel(
        id: 9,
        question: "assets/images/QuizArabicAlpa/amza.jpg",
        answer: 0,
        options: ["ئ", "ل", "ة"]),
    QuestionArabicModel(
        id: 10,
        question: "assets/images/QuizArabicAlpa/tha.jpg",
        answer: 1,
        options: ["ق", "ث", "ا"]),
  ];

  List<QuestionArabicModel> get questionsList => [..._questionsList];

  bool _isPressed = false;

  bool get isPressed => _isPressed; //To check if the answer is pressed

  double _numberOfQuestion = 1;

  double get numberOfQuestion => _numberOfQuestion;

  int? _selectAnswer;

  int? get selectAnswer => _selectAnswer;

  int? _correctAnswer;

  int _countOfCorrectAnswers = 0;

  int get countOfCorrectAnswers => _countOfCorrectAnswers;

  //map for check if the question has been answered
  final Map<int, bool> _questionIsAnswerd = {};

  //page view controller
  late PageController pageController;

  //timer
  Timer? _timer;

  final maxSec = 15;

  final RxInt _sec = 15.obs;

  RxInt get sec => _sec;

  @override
  void onInit() {
    pageController = PageController(initialPage: 0);
    resetAnswer();
    super.onInit();
  }

  @override
  void onClose() {
    pageController.dispose();
    super.onClose();
  }

  //get final score
  double get scoreResult {
    return _countOfCorrectAnswers * 100 / _questionsList.length;
  }

  void checkAnswer(QuestionArabicModel questionModel, int selectAnswer) {
    _isPressed = true;

    _selectAnswer = selectAnswer;
    _correctAnswer = questionModel.answer;

    if (_correctAnswer == _selectAnswer) {
      _countOfCorrectAnswers++;
    }
    stopTimer();
    _questionIsAnswerd.update(questionModel.id, (value) => true);
    Future.delayed(const Duration(milliseconds: 500))
        .then((value) => nextQuestion());
    update();
  }

  //check if the question has been answered
  bool checkIsQuestionAnswered(int quesId) {
    return _questionIsAnswerd.entries
        .firstWhere((element) => element.key == quesId)
        .value;
  }

  void nextQuestion() {
    if (_timer != null || _timer!.isActive) {
      stopTimer();
    }

    if (pageController.page == _questionsList.length - 1) {
      Get.offAndToNamed(ResultScreen.routeName);
    } else {
      _isPressed = false;
      pageController.nextPage(
          duration: const Duration(milliseconds: 500), curve: Curves.linear);

      startTimer();
    }
    _numberOfQuestion = pageController.page! + 2;
    update();
  }

  //called when start again quiz
  void resetAnswer() {
    for (var element in _questionsList) {
      _questionIsAnswerd.addAll({element.id: false});
    }
    update();
  }

  //get right and wrong color
  Color getColor(int answerIndex) {
    if (_isPressed) {
      if (answerIndex == _correctAnswer) {
        return Colors.green.shade700;
      } else if (answerIndex == _selectAnswer &&
          _correctAnswer != _selectAnswer) {
        return Colors.red.shade700;
      }
    }
    return Colors.white;
  }

  //het right and wrong icon
  IconData getIcon(int answerIndex) {
    if (_isPressed) {
      if (answerIndex == _correctAnswer) {
        return Icons.done;
      } else if (answerIndex == _selectAnswer &&
          _correctAnswer != _selectAnswer) {
        return Icons.close;
      }
    }
    return Icons.close;
  }

  void startTimer() {
    resetTimer();
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_sec.value > 0) {
        _sec.value--;
      } else {
        stopTimer();
        nextQuestion();
      }
    });
  }

  void resetTimer() => _sec.value = maxSec;

  void stopTimer() => _timer!.cancel();
  //call when start again quiz
  void startAgain() {
    _correctAnswer = null;
    _countOfCorrectAnswers = 0;
    resetAnswer();
    _selectAnswer = null;
    Get.offAllNamed(WelcomeScreen.routeName);
  }
}

/* String name = "";
  final List<QuestionArabicModel> _QuestionArabicList = [
    QuestionArabicModel(
        id: 1,
        answer: 2,
        questionImage: "assets/images/AlpaArabic/Ba.jpg",
        options: ["ا", "ب", "ت"]),
    QuestionArabicModel(
        id: 2,
        answer: 3,
        questionImage: "assets/images/AlpaArabic/aen.jpg",
        options: ["غ", "ح", "ع"]),
    QuestionArabicModel(
        id: 3,
        answer: 1,
        questionImage: "assets/images/AlpaArabic/dadd.jpg",
        options: ["ي", "س", "ض"]),
    QuestionArabicModel(
        id: 4,
        answer: 1,
        questionImage: "assets/images/AlpaArabic/gim.jpg",
        options: ["ج", "ح", "خ"]),
    QuestionArabicModel(
        id: 5,
        answer: 1,
        questionImage: "assets/images/AlpaArabic/no.jpg",
        options: ["لا", "ى", "ه"]),
    QuestionArabicModel(
        id: 6,
        answer: 2,
        questionImage: "assets/images/AlpaArabic/raa.jpg",
        options: ["ز", "ر", "د"]),
    QuestionArabicModel(
        id: 7,
        answer: 1,
        questionImage: "assets/images/AlpaArabic/mem.jpg",
        options: ["م", "ن", "ه"]),
    QuestionArabicModel(
        id: 8,
        answer: 2,
        questionImage: "assets/images/AlpaArabic/zah.jpg",
        options: ["ط", "ظ", "س"]),
    QuestionArabicModel(
        id: 9,
        answer: 3,
        questionImage: "assets/images/AlpaArabic/amza.jpg",
        options: ["ة", "ل", "ء"]),
    QuestionArabicModel(
        id: 10,
        answer: 1,
        questionImage: "assets/images/AlpaArabic/tha.jpg",
        options: ["ث", "ص", "ا"]),
  ];

  bool _IsPresed = false;
  double _NumOfQuestion = 1;
  int? _SelectedAmswer;
  int _CountOfCorrectAnswer = 0;

  final RxInt _sec = 15.obs;

  int get CountOfQuestion => _QuestionArabicList.length;
  List<QuestionArabicModel> get QuestionArabicList => [..._QuestionArabicList];
  bool get IsPresed => _IsPresed;
  double get NumOfQuestion => _NumOfQuestion;
  int? get SelectedAnswer => _SelectedAmswer;
  int get CountOfCorrectedAnswer => _CountOfCorrectAnswer;
  RxInt get sec => _sec;

  int? _correctAnswer;

  final Map<int, bool> __questionIsAnswered = {};
  Timer? _timer;

  final MaxSec = 15;
  late PageController pageController;

  @override
  void onInit() {
    pageController = PageController(initialPage: 0);
    resetAnswer();
    super.onInit();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    pageController.dispose();
    super.onClose();
  }

  double get ScoreResult {
    return CountOfCorrectedAnswer * 100 / _QuestionArabicList.length;
  }

  void CheckAnswer(
    QuestionArabicModel questionArabicModel,
    int selectedAnswer,
  ) {
    _IsPresed = true;
    _SelectedAmswer = selectedAnswer;
    _CountOfCorrectAnswer = questionArabicModel.answer;
    if (_correctAnswer == _SelectedAmswer) {
      _CountOfCorrectAnswer++;
    }
    stopTimer();

    __questionIsAnswered.update(questionArabicModel.id, (value) => true);
    Future.delayed(const Duration(milliseconds: 500))
        .then((value) => NextQuestion());
    update();
  }

  bool CheckIsQuestionAnswered(int quesID) {
    return __questionIsAnswered.entries
        .firstWhere((element) => element.key == quesID)
        .value;
  }

  void resetAnswer() {
    for (var element in _QuestionArabicList) {
      __questionIsAnswered.addAll({element.id: false});
    }
    update();
  }

  NextQuestion() {
    if (_timer != null || _timer!.isActive) {
      stopTimer();
    }
    if (pageController.page == QuestionArabicList.length - 1) {
      Get.offAndToNamed(ResultScreen.routeName);
    } else {
      _IsPresed = false;
      pageController.nextPage(
          duration: const Duration(microseconds: 500), curve: Curves.linear);
      StartTimer();
    }
    _NumOfQuestion = pageController.page! + 2;
    update();
  }

  void stopTimer() => _timer!.cancel();
  void StartTimer() {
    resetTimer();
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_sec.value > 0) {
        _sec.value--;
      } else {
        stopTimer();
        NextQuestion();
      }
    });
  }

  void resetTimer() => _sec.value = MaxSec;

  Color GetColor(int answetIndex) {
    if (_IsPresed) {
      if (answetIndex == _correctAnswer) {
        return const Color.fromARGB(255, 120, 199, 30);
      } else if (answetIndex == _SelectedAmswer &&
          _correctAnswer != _SelectedAmswer) {
        return const Color.fromARGB(255, 227, 31, 31);
      }
    }
    return Colors.white;
  }

  IconData getIcon(int answetIndex) {
    if (_IsPresed) {
      if (answetIndex == _correctAnswer) {
        return Icons.done;
      } else if (answetIndex == _SelectedAmswer &&
          _correctAnswer != _SelectedAmswer) {
        return Icons.close;
      }
    }
    return Icons.close;
  }

  void StartAgain() {
    _correctAnswer = null;
    _CountOfCorrectAnswer = 0;
    _SelectedAmswer = null;
    resetAnswer();
    Get.offAndToNamed(WelcomeScreen.routeName);
  }*/
