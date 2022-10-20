import 'package:flutter/material.dart';
import 'package:flutter_quiz/answer.dart';
import 'package:flutter_quiz/question.dart';

class Quiz extends StatelessWidget {

  final List<Map<String, Object>> questions;
  final Function _answerQuestion;
  final int _questionIndex;

  Quiz(this._answerQuestion, this.questions, this._questionIndex);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Question(
              questions[_questionIndex]['questionText'].toString()),
          //3 dots operator grab the each value from list and add to outer list
          ...(questions[_questionIndex]['answers'] as List<String>)
              .map((answer) => Answer(_answerQuestion, answer))
              .toList()
        ],
      ),
    );
  }
}
