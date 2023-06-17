import 'package:flutter/material.dart';
import 'package:quiz_test/data/questions.dart';
import 'home_page.dart';
import 'questions_page.dart';
import 'result_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _Quiz();
  }
}

class _Quiz extends State<Quiz> {
  List<String> selectedAnswers = [];
  var displayedScreen = 'start-screen';

  void changingScreen() {
    setState(() {
      displayedScreen = 'questions-screen';
    });
  }

  void finalAnswers(String answer) {
    selectedAnswers.add(answer);
    if (selectedAnswers.length == questions.length) {
      setState(() {
        displayedScreen = 'result-screen';
        selectedAnswers = [];
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    /******* Another Method 
     *  widget screen = HomePage(const Color.fromARGB(255, 51, 26, 119), changingScreen)
     * if (displayedScreen == 'questions-screen'){
     * screen = const Questions();
     * }
     */

    Widget screen = displayedScreen == 'start-screen'
        ? HomePage(changingScreen)
        : displayedScreen == 'questions-screen'
            ? Questions(onSelectedAnswer: finalAnswers)
            : const Results();

    return MaterialApp(
      home: Scaffold(
        body: Container(
            decoration:
                const BoxDecoration(color: Color.fromARGB(255, 51, 26, 119)),
            child: screen),
      ),
      //
    );
  }
}
