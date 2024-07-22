import 'package:flutter/material.dart';
import 'package:quiz/questions.dart';
import 'package:quiz/result_screen.dart';
import 'package:quiz/start_screen.dart';
import 'package:quiz/questions_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  String screenName = 'start-screen';
  List<String> userAnswers = [];

  void swtichScreen() {
    print(userAnswers.length);
    if (screenName == 'start-screen') {
      screenName = 'questions-screen';
    } else if (userAnswers.length < questions.length) {
      screenName = 'questions-screen';
    } else {
      screenName = 'result-screen';
    }
    setState(() {});
  }

  void updateUserAnswers(String answer) {
    userAnswers.add(answer);
    swtichScreen();
  }

  Widget detectScreenWidget() {
    Widget screenWidget;
    if (screenName == 'start-screen') {
      screenWidget = StartScreen(onTap: swtichScreen);
    } else if (screenName == 'questions-screen') {
      screenWidget = QuestionsScreen(
        onTap: swtichScreen,
        updateUserAnswers: updateUserAnswers,
      );
    } else {
      screenWidget = ResultScreen(userAnswers: userAnswers);
    }
    return screenWidget;
  }

  @override
  Widget build(context) {
    return detectScreenWidget();
  }
}
