import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        textColor: Colors.black,
        color: Colors.blueGrey[100],
        child: Text(answerText),
        onPressed: selectHandler,
      ),
    );
  }
}