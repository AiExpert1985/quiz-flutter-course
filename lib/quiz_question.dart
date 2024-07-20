class QuizQuestion {
  const QuizQuestion(this._question, this._answers);

  final String _question;
  final List<String> _answers;

  String get question {
    return _question;
  }

  List<String> get answers {
    return _answers;
  }

  List<String> get shuffledAnswers {
    List<String> shuffledAnswers = List.of(answers);
    shuffledAnswers.shuffle();
    return shuffledAnswers;
  }

  String get correctAnswer {
    return _answers[0];
  }

  bool isCorrectAnswer(answer) {
    return answer == correctAnswer;
  }
}
