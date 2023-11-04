import 'package:flutter/material.dart';
import 'dart:async';
import 'package:adv_basics/quiz.dart';
// import 'package:adv_basics/logo.dart';

import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  @override
  State<SplashScreen> createState() {
    return _SplashScreenState();
  }
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const Quiz()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 255, 255, 255),
      child: Center(
          child: Text(
        'Test Your Knowledge',
        style: GoogleFonts.lato(
            color: const Color.fromARGB(255, 78, 10, 195),
            fontSize: 20,
            fontWeight: FontWeight.bold),
      )),
    );
  }
}
