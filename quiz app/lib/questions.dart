import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        questionText,
        style: TextStyle(
            fontSize: 30, fontWeight: FontWeight.bold, color: Colors.grey[800]),
        textAlign: TextAlign.center,
      ),
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.only(bottom: 30),
      width: double.infinity,
    );
  }
}
