import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';
import 'quiz.dart';
import 'result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _question = [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'black', 'score': 2},
        {'text': 'blue', 'score': 3},
        {'text': 'red', 'score': 4}
      ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'dog', 'score': 2},
        {'text': 'cat', 'score': 3},
        {'text': 'bear', 'score': 4}
      ],
    },
    {
      'questionText': 'What\'s your favorite food?',
      'answers': [
        {'text': 'bread', 'score': 2},
        {'text': 'noodle', 'score': 3},
        {'text': 'pizza', 'score': 4}
      ],
    }
  ];

  var _questionIndex=0;
  var _totalScore =0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }
  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _question.length) {
      print('We have more question!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('MY FIRST APP'),
          ),
          body: _questionIndex < _question.length
              ? Quiz(
                  question: _question,
                  answerQuestion: _answerQuestion,
                  questionIndex: _questionIndex,
                )
              : Result(_totalScore,_resetQuiz)
      ),
    );
  }
}
