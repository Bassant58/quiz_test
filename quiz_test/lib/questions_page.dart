import 'package:flutter/material.dart';
import 'data/questions.dart';
import 'answer_button.dart';
import 'package:google_fonts/google_fonts.dart';

// import './question-structure/questions_class.dart';

class Questions extends StatefulWidget {
  const Questions({
    super.key,
    required this.onSelectedAnswer,
  });
  final void Function(String answer) onSelectedAnswer;

  @override
  State<Questions> createState() {
    return _Questions();
  }
}

class _Questions extends State<Questions> {
  var questionNumber = 0;

  void changeNumber(String selectedAnswer) {
    widget.onSelectedAnswer(selectedAnswer);

    setState(() {
      questionNumber++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        child: Container(
          margin: const EdgeInsets.all(40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                questions[questionNumber].text,
                textAlign: TextAlign.center,
                style: GoogleFonts.lato(
                    textStyle: Theme.of(context).textTheme.labelMedium,
                    fontSize: 20,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w800,
                    wordSpacing: 1.5,
                    height: 1.5,
                    color: const Color.fromARGB(255, 0, 0, 0)),
              ),
              const SizedBox(
                height: 20,
              ),
              ...questions[questionNumber].shuffledQUestions().map((answer) {
                return AnswerButton(
                    text: answer,
                    onTap: () {
                      changeNumber(answer);
                    });
              })
            ],
          ),
        ));
  }
}
