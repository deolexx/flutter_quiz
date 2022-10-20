import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;

  Result(this.resultScore);

  String get resultPhrase {
    var resultText = 'You Did It';
    if (resultScore <= 5) {
      resultText = 'You are innocent';
    } else if(resultScore <=12) {
      resultText =  'Pretty Likeable';
    }else if(resultScore <=30) {
      resultText =  'You Strange';
    }else  {
      resultText =  'You are bad';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Center(
      child: Text(
        resultPhrase,
        style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
      ),
    ));
  }
}
//
