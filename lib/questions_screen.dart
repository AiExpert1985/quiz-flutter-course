import 'package:flutter/material.dart';
import 'package:quiz/answer_button.dart';
import 'package:quiz/questions.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({
    required this.onTap,
    required this.updateUserAnswers,
    super.key,
  });

  final void Function() onTap;
  final void Function(String) updateUserAnswers;

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  int currentQuestionIndex = 0;

  void nextQuestion(answer) {
    widget.updateUserAnswers(answer);
    setState(() {
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(context) {
    return Container(
      margin: const EdgeInsets.all(40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            questions[currentQuestionIndex].question,
            style: GoogleFonts.lato(
              color: Colors.white,
              fontSize: 18,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 20),
          ...questions[currentQuestionIndex]
              .shuffledAnswers
              .map((answer) => AnswerButton(
                  answer: answer,
                  onTap: () {
                    nextQuestion(answer);
                  })),
        ],
      ),
    );
  }
}