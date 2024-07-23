class AnsweredQuestion {
  AnsweredQuestion({
    required this.questionNum,
    required this.questionText,
    required this.correctAnswer,
    required this.userAnswer,
  }) {
    updateScore();
  }

  int questionNum;
  String questionText;
  String correctAnswer;
  String userAnswer;

  static int userScore = 0;
  static int totalQuestions = 0;

  void updateScore() {
    totalQuestions++;
    if (isCorrectlyAnswered()) {
      userScore++;
    }
  }

  static void resetClassVariables() {
    userScore = 0;
    totalQuestions = 0;
  }

  bool isCorrectlyAnswered() {
    return correctAnswer == userAnswer;
  }
}
