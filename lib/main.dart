// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:quiz_app/answer.dart';
import 'package:quiz_app/question.dart';

void main() {
  runApp(QuestionApp());
}

class _QuestionAppState extends State<QuestionApp> {
  var _selectedAnswer = 0;

  void _toRespond() {
    setState(() {
      _selectedAnswer++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<Map<String, Object>> questions = [
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

    List<String> answers = questions[_selectedAnswer]['answer'] as List<String>;

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Question(questions[_selectedAnswer]['question'] as String),
            ...answers.map((text) => Answer(text, _toRespond)).toList(),
          ],
        ),
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
