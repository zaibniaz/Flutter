import 'package:flutter/material.dart';
import './quesitions.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> quesitionsList;
  final int quesitionIndex;
  final Function answerQuesition;

  Quiz(
      {@required this.quesitionsList,
      @required this.quesitionIndex,
      @required this.answerQuesition});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Quesitions(
          quesitionsList[quesitionIndex]['quesitionText'],
        ),
        ...(quesitionsList[quesitionIndex]['answers'] as List<Map<String,Object>>)
            .map((answer) {
          return Answer(() => answerQuesition(answer['score']), answer['text']);
        }).toList()
      ],
    );
  }
}
