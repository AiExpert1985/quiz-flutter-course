import 'package:flutter/material.dart';
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

  void swtichScreen() {
    setState(() {
      screenName = 'questions-screen';
    });
  }

  Widget detectScreenWidget() {
    Widget returnedWidget = StartScreen(onTap: swtichScreen,);
    if (screenName == 'questions-screen') {
      returnedWidget = QuestionsScreen(onTap: swtichScreen,);
    }
    return returnedWidget;
  }

  @override
  Widget build(context) {
    return detectScreenWidget();
  }
}
