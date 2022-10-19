import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  var questionIndex =0;

  void answerQuestion() {
    questionIndex=questionIndex+1;
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
            title: Text('MyFirstApp'),
          ),
          body: Column(
            children: [
              Text(questions[questionIndex]),
              ElevatedButton(
                onPressed: answerQuestion,
                child: Text('Answer 1'),
              ),
              ElevatedButton(
                onPressed: answerQuestion,
                child: Text('Answer 2'),
              ),
              ElevatedButton(
                onPressed: answerQuestion,
                child: Text('Answer 3'),
              ),
            ],
          )),
    );
  }
}
