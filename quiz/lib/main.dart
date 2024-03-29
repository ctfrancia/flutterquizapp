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
    var questions = [
      {
        'questionText': 'what\'s your favorite color?',
        'answers': [ 'black', 'red', 'green', 'white']
      },
      {
        'questionText': 'what\'s your favorite animal?',
        'answers': [ 'dog', 'cat', 'fish', 'bird']
      },
      {
        'questionText': 'what\'s your favorite dessert?',
        'answers': [ 'ice cream', 'orchata', 'brownie', 'fruit']
      },
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
          ),
        body: Column(
          children: [
            Question(
              questions[_questionIndex]['questionText']
              ),
            ...(questions[_questionIndex]['answers'] as List<String>).map((answer) {
              return Answer(_answerQuestion, answer);
            }).toList()
          ],
        ),
      ),
    );
  }
}