import 'package:flutter/material.dart';
import 'package:quiz/answered_question.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({required this.answeredQuestions, super.key});

  final List<AnsweredQuestion> answeredQuestions;

  @override
  Widget build(context) {
    return Container(
      margin: const EdgeInsets.all(40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
              'You answered ${AnsweredQuestion.userScore} out of ${AnsweredQuestion.totalQuestions} correctly'),
          const Row(
            children: [
              Text('1'),
              Column(
                children: [Text('sdfsafasf'), Text('sfsfasf'), Text('asfsadf')],
              )
            ],
          )
        ],
      ),
    );
  }
}
