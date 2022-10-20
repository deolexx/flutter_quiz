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
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 7},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1},
      ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Cat', 'score': 10},
        {'text': 'Dog', 'score': 7},
        {'text': 'Horse', 'score': 3},
        {'text': 'Turtle', 'score': 1},
      ],
    },
    {
      'questionText': 'What\'s your favorite movie?',
      'answers': [
        {'text': 'Titanic', 'score': 10},
        {'text': 'Green mile', 'score': 7},
        {'text': 'Forrest Gump', 'score': 3},
        {'text': '8th Mile', 'score': 1},
      ],
    },
    {
      'questionText': 'What\'s your favorite book?',
      'answers': [
        {'text': 'Game of Thrones', 'score': 10},
        {'text': 'Terror', 'score': 7},
        {'text': 'War and Peace', 'score': 3},
        {'text': 'Dune', 'score': 1},
      ],
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;
  void _answerQuestion(int score) {
    _totalScore +=score;

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
              : Result(_totalScore)),
    );
  }
}
