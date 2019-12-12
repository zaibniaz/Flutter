import 'package:flutter/material.dart';

import './quesitions.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _quesitionIndex = 0;

  void _answerQuesition() {
    setState(() {
      _quesitionIndex = _quesitionIndex + 1;
    });

    print(_quesitionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var quesitionsList = [
      "what\'s your favourite color?",
      "what\'s your hobby?"
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: <Widget>[
            Quesitions(quesitionsList.elementAt(_quesitionIndex)),
            RaisedButton(
              onPressed: _answerQuesition,
              child: Text('Answer 1'),
            ),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: _answerQuesition,
            ),
            RaisedButton(
              child: Text('Answer 3'),
              onPressed: _answerQuesition,
            ),
          ],
        ),
      ),
    );
  }
}
