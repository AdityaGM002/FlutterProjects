import 'dart:ui';

import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final Function resetQuiz;
  String printText;

  Result(this.totalScore, this.resetQuiz);

  String get resultText {
    if (totalScore < 2) {
      printText = 'Needs more work';
    } else if (totalScore <= 4) {
      printText = 'Not bad';
    } else {
      printText = 'Excellent!';
    }
    return printText;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.all(20),
        ),
        Container(
          child: Text(
            resultText,
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          child: Text(
            'Your score is:',
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          ),
          margin: EdgeInsets.all(20),
        ),
        Container(
          child: Text(
            '$totalScore/5',
            style: TextStyle(
                fontSize: 75,
                fontWeight: FontWeight.bold,
                color: Colors.blue[700]),
          ),
          padding: EdgeInsets.all(20),
          margin: EdgeInsets.only(bottom: 75),
        ),
        FlatButton(
          child: Text(
            'Reset Quiz',
            style: TextStyle(fontSize: 25),
          ),
          onPressed: resetQuiz,
          padding: EdgeInsets.all(20),
          color: Colors.amber,
        ),
      ],
    );
  }
}
