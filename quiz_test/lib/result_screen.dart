import 'package:flutter/material.dart';


class Results extends StatelessWidget {
  const Results({super.key});
  // final Color chosenColor;
  

  @override
  Widget build(BuildContext context) {
    return  const Center(
          child: Column(mainAxisSize: MainAxisSize.min, children: [
            Text('answer good'),
             SizedBox(
              height: 50,
            ),
          ]),
        );
  }
}