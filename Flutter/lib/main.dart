import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _quesitionIndex = 0;

  var _totalScore = 0;

  void _answerQuesition(int score) {
    _totalScore += score;

    setState(() {
      _quesitionIndex = _quesitionIndex + 1;
    });

    print(_quesitionIndex);
  }

  @override
  Widget build(BuildContext context) {
    const quesitionsList = [
      {
        'quesitionText': 'what\'s your favorite color?',
        'answers': [
          {'text': 'Black', 'score': 1},
          {'text': 'Red', 'score': 2},
          {'text': 'Blue', 'score': 3},
          {'text': 'White', 'score': 4}
        ]
      },
      {
        'quesitionText': 'what\'s your favorite animal?',
        'answers': [
          {'text': 'Rabbit', 'score': 2},
          {'text': 'Lion', 'score': 3},
          {'text': 'Snake', 'score': 4},
          {'text': 'Tiger', 'score': 5}
        ]
      },
      {
        'quesitionText': 'what\'s your favorite instructor?',
        'answers': [
          {'text': 'Max', 'score': 1},
          {'text': 'Max', 'score': 1},
          {'text': 'Max', 'score': 1},
          {'text': 'Max', 'score': 1}
        ]
      },
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _quesitionIndex < quesitionsList.length
            ? Quiz(
                quesitionsList: quesitionsList,
                quesitionIndex: _quesitionIndex,
                answerQuesition: _answerQuesition)
            : Result(
                totalScore: _totalScore,
              ),
      ),
    );
  }
}
