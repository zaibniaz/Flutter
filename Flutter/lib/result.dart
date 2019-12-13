import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;

  Result({@required this.totalScore});

  String get resultPhrase {
    String resultText = '';
    if (totalScore > 9)
      resultText = 'You are owsome';
    else if (totalScore > 6)
      resultText = 'You are good';
    else if (totalScore > 3)
      resultText = 'You are okay';
    else
      resultText = 'You are failed';
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          resultPhrase,
          style: TextStyle(fontSize: 38, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
