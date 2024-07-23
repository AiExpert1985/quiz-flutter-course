import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz/answered_question.dart';
import 'package:quiz/row_identifier.dart';

class ResultRow extends StatelessWidget {
  const ResultRow({required this.answeredQuestion, super.key});

  final AnsweredQuestion answeredQuestion;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        RowIdentifier(
            questionNum: answeredQuestion.questionNum,
            isCorrectlyAnswered: answeredQuestion.isCorrectlyAnswered()),
        Expanded(
          child: Column(
            children: [
              Text(
                answeredQuestion.questionText,
                textAlign: TextAlign.center,
                style: GoogleFonts.lato(fontSize: 16),
              ),
              Text(
                answeredQuestion.correctAnswer,
                textAlign: TextAlign.center,
                style: GoogleFonts.lato(
                    color: const Color.fromARGB(255, 36, 33, 233)),
              ),
              Text(
                answeredQuestion.userAnswer,
                textAlign: TextAlign.center,
                style: GoogleFonts.lato(
                    color: const Color.fromARGB(255, 33, 16, 36)),
              ),
              const SizedBox(
                height: 15,
              )
            ],
          ),
        )
      ],
    );
  }
}
