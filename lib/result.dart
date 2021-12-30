// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_constructors_in_immutables, deprecated_member_use

import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int points;
  final void Function() restart;

  Result(this.points, this.restart);

  String get resultWords {
    if (points < 8) {
      return 'Parabéns';
    } else if (points < 12) {
      return 'Você é bom';
    } else if (points < 16) {
      return 'Impressionante';
    } else {
      return 'Nível Jedi!';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            resultWords,
            style: TextStyle(fontSize: 28),
          ),
        ),
        FlatButton(
          onPressed: restart,
          child: Text(
            'Reiniciar',
            style: TextStyle(fontSize: 18),
          ),
          textColor: Colors.blue,
        )
      ],
    );
  }
}
