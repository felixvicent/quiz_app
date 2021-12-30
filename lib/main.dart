// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, deprecated_member_use

import 'package:flutter/material.dart';

void main() {
  runApp(QuestionApp());
}

class QuestionApp extends StatelessWidget {
  void toRespond() {
    print('Pergunta respondida');
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
          title: Text('Hello Felps'),
        ),
        body: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Text(questions[0]),
            RaisedButton(
              child: Text('5'),
              onPressed: toRespond(),
            ),
            RaisedButton(
              child: Text('8'),
              onPressed: toRespond(),
            ),
            RaisedButton(
              child: Text('3'),
              onPressed: toRespond(),
            ),
          ],
        ),
      ),
    );
  }
}
