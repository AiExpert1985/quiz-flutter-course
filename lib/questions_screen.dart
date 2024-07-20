import 'package:flutter/material.dart';
import 'package:quiz/questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  int currentQuestionIndex = 0;

  @override
  Widget build(context) {
    return Column(
      children: [
        Text(questions[0].question),
        ...questions[0].shuffledAnswers.map((item) => Text(item)),
      ],
    );
  }
}
