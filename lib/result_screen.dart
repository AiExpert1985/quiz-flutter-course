import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz/answered_question.dart';
import 'package:quiz/result_row.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({required this.answeredQuestions, required this.onTap, super.key});

  final List<AnsweredQuestion> answeredQuestions;
  final void Function() onTap;

  @override
  Widget build(context) {
    return Container(
      margin: const EdgeInsets.all(40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'You answered ${AnsweredQuestion.userScore} out of ${AnsweredQuestion.totalQuestions} correctly',
            textAlign: TextAlign.center,
            style: GoogleFonts.lato(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
          const SizedBox(height: 20,),
          ...answeredQuestions.map((e) {
            return ResultRow(
              answeredQuestion: e,
            );
          }),
        TextButton.icon(
              onPressed: onTap,
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
              ),
              icon: const Icon(Icons.refresh),
              label: const Text('Restart Quiz!'),
            )],
      ),
    );
  }
}
