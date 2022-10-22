import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  // const Answer({Key key}) : super(key: key);
//
  Function handleChoose;
  String answerText;

  Answer(this.handleChoose, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: handleChoose,
        style: ElevatedButton.styleFrom(
          primary: Color.fromARGB(195, 14, 0, 121),
        ),
        child: Text(answerText),
      ),
    );
  }
}
