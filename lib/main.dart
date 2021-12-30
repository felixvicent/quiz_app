// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, deprecated_member_use

import 'package:flutter/material.dart';

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
    final questions = [
      'Qual o 5º elemento da sequancia Fibonacci?',
      'Qual a velocidade da luz',
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Text(questions[_selectedAnswer]),
            RaisedButton(
              child: Text('5'),
              onPressed: _toRespond,
            ),
            RaisedButton(
              child: Text('8'),
              onPressed: _toRespond,
            ),
            RaisedButton(
              child: Text('3'),
              onPressed: _toRespond,
            ),
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
