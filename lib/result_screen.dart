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
          ...answeredQuestions.map((e) {
            return Row(
              children: [
                Text('${e.questionNum}'),
                Column(
                  children: [
                    Text(e.questionText),
                    Text(e.correctAnswer),
                    Text(e.userAnswer),
                  ],
                )
              ],
            );
          }),
        ],
      ),
    );
  }
}
