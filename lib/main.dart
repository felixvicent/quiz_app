// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, deprecated_member_use

import 'package:flutter/material.dart';

import 'package:quiz_app/answer.dart';
import 'package:quiz_app/question.dart';
import 'package:quiz_app/quiz.dart';
import 'package:quiz_app/result.dart';

void main() {
  runApp(QuestionApp());
}

class _QuestionAppState extends State<QuestionApp> {
  var _selectedQuestion = 0;

  final _questions = const [
    {
      'question': 'Qual é o 5º elemento da sequência Fibonacci?',
      'answer': ['5', '3', '8', '13'],
    },
    {
      'question': 'Qual a velocidade da luz?',
      'answer': ['200.000 m/s', '50.000 m/s', '300.000 m/s', '120.000 m/s'],
    },
    {
      'question': 'Quantos segundos tem um hora?',
      'answer': ['3.600', '3.200', '2.800', '4.000'],
    }
  ];

  void _toRespond() {
    if (hasSelectedQuestion) {
      setState(() {
        _selectedQuestion++;
      });
    }
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
            : Result(),
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
