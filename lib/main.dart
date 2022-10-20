import 'package:flutter/material.dart';
import 'package:flutter_quiz/quiz.dart';
import 'package:flutter_quiz/result.dart';

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
  final _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': ['Black', 'Red', 'Green', 'White'],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': ['Cat', 'Dog', 'Horse', 'Mouse'],
    },
    {
      'questionText': 'What\'s your favorite movie?',
      'answers': ['Green Mile', 'Snatch', 'Titanic', '9yards'],
    },
    {
      'questionText': 'What\'s your favorite book?',
      'answers': ['Dune', 'War and Peace', 'Shantaram', 'Game of Thrones'],
    },
  ];
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() => {
          _questionIndex++,
        });

    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('We have more questions');
    } else {}
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            titleTextStyle: TextStyle(fontSize: 28),
            title: Text('MyFirstApp'),
          ),
          body: _questionIndex < _questions.length
              ? Quiz(_answerQuestion, _questions, _questionIndex)
              : Result()),
    );
  }
}
