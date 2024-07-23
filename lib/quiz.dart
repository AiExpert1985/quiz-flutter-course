import 'package:flutter/material.dart';
import 'package:quiz/questions.dart';
import 'package:quiz/quiz_question.dart';
import 'package:quiz/result_screen.dart';
import 'package:quiz/start_screen.dart';
import 'package:quiz/questions_screen.dart';
import 'package:quiz/answered_question.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  String screenName = 'start-screen';
  List<AnsweredQuestion> answeredQuestions = [];

  void swtichScreen() {
    if (screenName == 'result-screen') {
      screenName = 'start-screen';
      answeredQuestions = [];
    } else if (answeredQuestions.length < questions.length) {
      screenName = 'questions-screen';
    } else {
      screenName = 'result-screen';
    }
    setState(() {});
  }

  void updateQuizResult(String answer) {
    int questionIndex = answeredQuestions.length;
    QuizQuestion question = questions[questionIndex];
    AnsweredQuestion answeredQuestion = AnsweredQuestion(
      questionNum: questionIndex,
      questionText: question.question,
      correctAnswer: question.correctAnswer,
      userAnswer: answer,
    );
    answeredQuestions.add(answeredQuestion);
    swtichScreen();
  }

  Widget detectScreenWidget() {
    Widget screenWidget;
    if (screenName == 'start-screen') {
      screenWidget = StartScreen(onTap: swtichScreen);
    } else if (screenName == 'questions-screen') {
      screenWidget = QuestionsScreen(
        onTap: swtichScreen,
        updateQuizResult: updateQuizResult,
      );
    } else {
      screenWidget = ResultScreen(
        answeredQuestions: answeredQuestions,
        onTap: swtichScreen,
      );
    }
    return screenWidget;
  }

  @override
  Widget build(context) {
    return detectScreenWidget();
  }
}
