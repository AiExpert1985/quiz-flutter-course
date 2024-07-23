class QuizResult {
  QuizResult({
    required this.questionNum,
    required this.questionText,
    required this.correctAnswer,
    required this.userAnswer,
  });

  int questionNum;
  String questionText;
  String correctAnswer;
  String userAnswer;

  bool isAnswerCorrect(){
    return correctAnswer == userAnswer;
  }

}
