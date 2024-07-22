import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({required this.userAnswers, super.key});

  final List<String> userAnswers;

  @override
  Widget build(context) {
    return const Text('Result');
  }
}
