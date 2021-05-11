import 'dart:ui';

import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetQuiz;

  Result(this.resultScore, this.resetQuiz);

  String get resultPhrase {
    String resultText;
    if (resultScore > 10) {
      resultText = 'You win';
    } else {
      resultText = 'You lose';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          ),
          TextButton(onPressed: resetQuiz, child: Text('Reset quiz!'),style: ButtonStyle(foregroundColor: MaterialStateProperty .all(Colors.blue)),)
        ],
      ),
    );
  }
}
