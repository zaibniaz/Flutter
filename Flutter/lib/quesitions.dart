import 'package:flutter/material.dart';

class Quesitions extends StatelessWidget {
  final String quesitionText;

  Quesitions(this.quesitionText);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.all(10),
        child: Text(
          quesitionText,
          style: TextStyle(
            fontSize: 28,
          ),
          textAlign: TextAlign.center,
        ));
  }
}
