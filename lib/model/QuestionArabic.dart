class QuestionArabicModel {
  /*int id, answer;
  String questionImage;
  List<String> options;

  QuestionArabicModel(
      {required this.id,
      required this.answer,
      required this.questionImage,
      required this.options});*/
  final int id, answer;
  final String question;
  final List<String> options;

  QuestionArabicModel(
      {required this.id,
      required this.question,
      required this.answer,
      required this.options});
}
