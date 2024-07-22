import 'package:flutter/material.dart';
import 'package:quiz/quiz.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 227, 107, 107),
                Color.fromARGB(255, 155, 64, 64),
              ],
            ),
          ),
          child: const Quiz(),
        ),
      ),
    ),
  );
}
