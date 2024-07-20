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
  String displayedScreenName = 'start-screen';

  void _swtichScreen() {
    setState(() {
      print('I am pressed');
      displayedScreenName = 'questions-screen';
    });
  }

  @override
  Widget build(context) {
    Widget currenScreenWidget = StartScreen(_swtichScreen);
    if (displayedScreenName == 'start-screen') {
      currenScreenWidget = StartScreen(_swtichScreen);
    } else if (displayedScreenName == 'questions-screen') {
      currenScreenWidget = const QuestionsScreen();
    }
    return currenScreenWidget;
  }
}
