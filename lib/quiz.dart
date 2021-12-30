// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:quiz_app/answer.dart';
import 'package:quiz_app/question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int selectedQuestion;
  final void Function(int) toRespond;

  Quiz({
    required this.questions,
    required this.selectedQuestion,
    required this.toRespond,
  });

  bool get hasSelectedQuestion {
    return selectedQuestion < questions.length;
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, Object>>? answers = hasSelectedQuestion
        ? questions[selectedQuestion]['answer'] as List<Map<String, Object>>
        : null;

    return Column(
      children: [
        Question(questions[selectedQuestion]['question'] as String),
        ...answers!
            .map((answer) => Answer(answer['text'] as String,
                () => toRespond(answer['value'] as int)))
            .toList(),
      ],
    );
  }
}
