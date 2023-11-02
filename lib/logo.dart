import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
//import 'package:adv_basics/quiz.dart';

class StartScreen extends StatelessWidget {
  //start screeen
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
        child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Opacity(
          opacity: 0.8,
          child: Image.asset(
            'assets/images/Quiz_logo.png',
            width: 300,
          ),
        ),
        const SizedBox(height: 20),
        Text(
          'Lets learn flutter in a fun way',
          style: GoogleFonts.oswald(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25),
        ),
        const SizedBox(height: 40),
        OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(
              foregroundColor: const Color.fromARGB(255, 255, 255, 255),
            ),
            icon: const Icon(Icons.arrow_right_alt),
            label: const Text(
              'Start Quiz',
              style: TextStyle(color: Colors.white),
            ))
      ],
    ));
  }
}
