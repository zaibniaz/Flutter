import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHanlder;
  final String answerText;

  Answer(this.selectHanlder,this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text(answerText),
        onPressed: selectHanlder,
      ),
    );
  }
}
