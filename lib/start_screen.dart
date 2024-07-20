import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.onButtonPress, {super.key});

  final void Function() onButtonPress;

  @override
  Widget build(context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 201, 102, 102),
            Color.fromARGB(255, 155, 64, 64),
          ],
        ),
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'images/quiz-logo.png',
              width: 300,
              color: const Color.fromARGB(143, 255, 255, 255),
            ),
            const SizedBox(height: 40, width: 50),
            Text(
              'Learn Flutter the fun way!!',
              style: GoogleFonts.lato(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
            const SizedBox(height: 40, width: 50),
            OutlinedButton.icon(
              onPressed: onButtonPress,
              style: OutlinedButton.styleFrom(
                side: const BorderSide(
                  color: Color.fromARGB(255, 155, 64, 64),
                ),
              ),
              icon: const Icon(Icons.arrow_right_alt),
              label: Text(
                'Start Quiz',
                style: GoogleFonts.lato(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
