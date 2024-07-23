import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz/answered_question.dart';

class ResultRow extends StatelessWidget {
  const ResultRow({required this.answeredQuestion, super.key});

  final AnsweredQuestion answeredQuestion;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          '${answeredQuestion.questionNum}',
          textAlign: TextAlign.center,
          style: GoogleFonts.lato(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
        Column(
          children: [
            Text(answeredQuestion.questionText),
            Text(answeredQuestion.correctAnswer),
            Text(answeredQuestion.userAnswer),
          ],
        )
      ],
    );
  }
}
