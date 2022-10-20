import 'package:flutter/material.dart';
import 'package:flutter_quiz/answer.dart';
import 'package:flutter_quiz/question.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() => {
          _questionIndex++,
          if (_questionIndex == 4) {_questionIndex = 0},
        });

    print('Answer chosen');
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favorite color?',
      'What\'s your favorite animal?',
      'What\'s your favorite movie?',
      'What\'s your favorite book?',
    ];

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            titleTextStyle: TextStyle(fontSize: 28),
            title: Text('MyFirstApp'),
          ),
          body: Column(
            children: [
              Question(questions[_questionIndex]),
              Answer(_answerQuestion),
              Answer(_answerQuestion),
              Answer(_answerQuestion),
            ],
          )),
    );
  }
}
