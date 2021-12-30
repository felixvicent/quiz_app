// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, deprecated_member_use

import 'package:flutter/material.dart';

import 'package:quiz_app/quiz.dart';
import 'package:quiz_app/result.dart';

void main() {
  runApp(QuestionApp());
}

class _QuestionAppState extends State<QuestionApp> {
  var _selectedQuestion = 0;
  var _points = 0;

  final _questions = const [
    {
      'question': 'Qual é o 5º elemento da sequência Fibonacci?',
      'answer': [
        {'text': '5', 'value': 10},
        {'text': '3', 'value': 5},
        {'text': '8', 'value': 3},
        {'text': '13', 'value': 1},
      ],
    },
    {
      'question': 'Qual a velocidade da luz?',
      'answer': [
        {'text': '200.000 m/s', 'value': 5},
        {'text': '50.000 m/s', 'value': 1},
        {'text': '300.000 m/s', 'value': 10},
        {'text': '120.000 m/s', 'value': 3},
      ],
    },
    {
      'question': 'Quantos segundos tem um hora?',
      'answer': [
        {'text': '3.600', 'value': 10},
        {'text': '3.200', 'value': 3},
        {'text': '2.800', 'value': 1},
        {'text': '4.000', 'value': 5},
      ],
    }
  ];

  void _toRespond(int points) {
    if (hasSelectedQuestion) {
      setState(() {
        _selectedQuestion++;
        _points += points;
      });
    }
  }

  void _restart() {
    setState(() {
      _selectedQuestion = 0;
      _points = 0;
    });
  }

  bool get hasSelectedQuestion {
    return _selectedQuestion < _questions.length;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: hasSelectedQuestion
            ? Quiz(
                questions: _questions,
                selectedQuestion: _selectedQuestion,
                toRespond: _toRespond,
              )
            : Result(_points, _restart),
      ),
    );
  }
}

class QuestionApp extends StatefulWidget {
  @override
  _QuestionAppState createState() {
    return _QuestionAppState();
  }
}
