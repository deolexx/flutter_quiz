import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function _selectHandler;

  Answer(this._selectHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
      child: ElevatedButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.blue)),
        onPressed: _selectHandler,
        child: Text('Answer 1'),
      ),
    );
  }
}
