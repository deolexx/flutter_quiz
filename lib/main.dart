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
    const questions = [
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

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            titleTextStyle: TextStyle(fontSize: 28),
            title: Text('MyFirstApp'),
          ),
          body: Column(
            children: [
              Question(questions[_questionIndex]['questionText'].toString()),
              //3 dots operator grab the each value from list and add to outer list
              ...(questions[_questionIndex]['answers'] as List<String>)
                  .map((answer) => Answer(_answerQuestion, answer))
                  .toList()
            ],
          )),
    );
  }
}
