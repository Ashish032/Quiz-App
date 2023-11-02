import 'package:adv_basics/data/questionss.dart';
import 'package:adv_basics/results_screen.dart';
import 'package:flutter/material.dart';
import 'package:adv_basics/logo.dart';
import 'package:adv_basics/questions.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  // Widget?
  //     activeScreen; //here ? states that this 'activeScreen' can also be null
  List<String> selectedAnswers = []; //list of selected answer
  var activeScreen = 'Start_Screen';

  // void initState() {
  //   activeScreen = StartScreen(switchScreen);
  //   super.initState();
  // }

  void restartQuiz() {
    setState(() {
      selectedAnswers = [];
      activeScreen = 'Question_Screen';
    });
  }

  void switchScreen() {
    setState(() {
      activeScreen = 'Questions_Screen';
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);

    if (selectedAnswers.length == questions.length) {
      //when all Question finished it go to result screen
      setState(() {
        activeScreen = 'Result_Screen';
      });
    }
  }

  @override
  Widget build(context) {
    Widget screenWidget = activeScreen == 'Start_Screen'
        ? StartScreen(switchScreen)
        : QuestionsScreen(
            onSelectAnswer: chooseAnswer,
          );

    if (activeScreen == 'Result_Screen') {
      screenWidget = ResultScreen(
        chosenAnswer: selectedAnswers,
        onRestart: restartQuiz,
      );
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromARGB(255, 65, 1, 160),
              Color.fromARGB(255, 80, 37, 145),
            ], begin: Alignment.topLeft, end: Alignment.bottomRight),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}
