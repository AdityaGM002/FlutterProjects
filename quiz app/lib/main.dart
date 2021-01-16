import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(int _score) {
    _totalScore = _totalScore + _score;
    setState(() {
      _questionIndex += 1;
    });
  }

  void _resetQuiz() {
    setState(() {
      _totalScore = 0;
      _questionIndex = 0;
    });
  }

  var _questions = [
    {
      'questionText':
          '1) Which of the following is the capital of Arunachal Pradesh?',
      'answers': [
        {'text': 'A) Itanagar', 'score': 1},
        {'text': 'B) Dispur', 'score': 0},
        {'text': 'C) Imphal', 'score': 0},
        {'text': 'D) Panaji', 'score': 0}
      ]
    },
    {
      'questionText': '2) In which state is the main language Khasi?',
      'answers': [
        {'text': 'A) Mizoram', 'score': 0},
        {'text': 'B) Nagaland', 'score': 0},
        {'text': 'C) Meghalaya', 'score': 1},
        {'text': 'D) Tripura', 'score': 0},
      ]
    },
    {
      'questionText':
          '3) Which is the largest coffee producing state of India?',
      'answers': [
        {'text': 'A) Kerala', 'score': 0},
        {'text': 'B) Tamil Nadu', 'score': 0},
        {'text': 'C) Karnataka', 'score': 1},
        {'text': 'D) Arunachal Pradesh', 'score': 0},
      ]
    },
    {
      'questionText': '4) Which state has the largest area?',
      'answers': [
        {'text': 'A) Maharashtra', 'score': 0},
        {'text': 'B) Madhya Pradesh', 'score': 0},
        {'text': 'C) Uttar Pradesh', 'score': 0},
        {'text': 'D) Rajasthan', 'score': 1},
      ]
    },
    {
      'questionText': '5) Which state has the largest population?',
      'answers': [
        {'text': 'A) Uttar Pradesh', 'score': 1},
        {'text': 'B) Maharastra', 'score': 0},
        {'text': 'C) Bihar', 'score': 0},
        {'text': 'D) Andra Pradesh', 'score': 0},
      ]
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text(
                'Quiz',
                style: TextStyle(fontSize: 30),
              ),
              centerTitle: true,
              backgroundColor: Colors.blue[700],
            ),
            body: Container(
              child: _questionIndex < _questions.length
                  ? Quiz(
                      answerQuestion: _answerQuestion,
                      questionIndex: _questionIndex,
                      questions: _questions,
                    )
                  : Result(_totalScore, _resetQuiz),
              padding: EdgeInsets.all(20),
              alignment: Alignment.center,
              color: Colors.grey[300],
            )));
  }
}
