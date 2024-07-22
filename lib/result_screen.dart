import 'package:flutter/material.dart';
import 'package:quiz/questions.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({required this.userAnswers, super.key});

  final List<String> userAnswers;

  @override
  Widget build(context) {
    return Container(
      margin: const EdgeInsets.all(40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [Text('You answered X out of ${questions.length} correctly')],
      ),
    );
  }
}
