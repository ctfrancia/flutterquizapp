import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());
class MyApp extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext ctx) {
    List<String> questions = [
      'what\'s your favorite color?',
      'what\'s your favorite animal?'
      ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
          ),
        body: Column(
          children: [
            Question(questions[_questionIndex]),
            // RaisedButton(child: Text('answer 1'), onPressed: this._answerQuestion,),
            // RaisedButton(child: Text('answer 2'), onPressed: _answerQuestion,),
            // RaisedButton(child: Text('answer 3'), onPressed: () => print('clicked'),),
            Answer(),
            Answer(),
            Answer(),
          ],
        ),
      ),
    );
  }
}