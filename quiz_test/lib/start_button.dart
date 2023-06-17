//  we can pass an attribute to stateful and access it by widget word 

import 'package:flutter/material.dart';

class StartQuizButton extends StatefulWidget {
  const StartQuizButton(this.buttonAction ,{super.key});
   final void Function() buttonAction;

  @override
  State<StartQuizButton> createState() {
    return _StartQuizButton();
  }
}

class _StartQuizButton extends State<StartQuizButton> {
  

  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
      // <-- OutlinedButton
      onPressed: () {
        widget.buttonAction();
      },
      icon: const Icon(
        Icons.quiz,
        size: 24.0,
        color: Colors.black45,
      ),
      label: const Text(
        'Start Quiz',
        style: TextStyle(
            fontSize: 20,
            fontStyle: FontStyle.italic,
            color: Color.fromARGB(255, 132, 77, 155)),
      ),
    );
  }
}