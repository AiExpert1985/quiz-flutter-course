import 'package:flutter/material.dart';

class RowIdentifier extends StatelessWidget {
  const RowIdentifier({
    required this.questionNum,
    required this.isCorrectlyAnswered,
    super.key,
  });

  final int questionNum;
  final bool isCorrectlyAnswered;

  @override
  Widget build(Object context) {
    return Container(
      width: 30,
      height: 30,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: isCorrectlyAnswered
            ? const Color.fromARGB(255, 150, 198, 241)
            : const Color.fromARGB(255, 249, 133, 241),
        borderRadius: BorderRadius.circular(100),
      ),
      child: Text(
        questionNum.toString(),
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          color: Color.fromARGB(255, 22, 2, 56),
        ),
      ),
    );
  }
}
