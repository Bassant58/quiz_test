import 'package:flutter/material.dart';
import 'button_reused.dart';

class HomePage extends StatelessWidget {
  const HomePage( this.buttonTrigger, {super.key});
  // final Color chosenColor;
  final void Function() buttonTrigger; 

  @override
  Widget build(BuildContext context) {
    return  Center(
          child: Column(mainAxisSize: MainAxisSize.min, children: [
            Image.asset(
              'assets/images/quiz-logo.png',
              width: 200,
              color:const  Color.fromARGB(150, 255, 255, 255),
            ),
            const SizedBox(
              height: 50,
            ),
             StartQuizButton(buttonTrigger)
          ]),
        );
  }
}