import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  // const Result({Key key}) : super(key: key);
  int totalScore;
  Function resetQuiz;

  Result(this.totalScore, this.resetQuiz);

  //Getter
  String get resultText {
    String result = 'Anda Berhasil';
    if (totalScore <= 8) {
      result = 'Anda Hebat Sekali';
    } else if (totalScore <= 12) {
      result = 'Anda Sedikit Jahat';
    } else if (totalScore <= 16) {
      result = 'Anda agak aneh!';
    } else {
      result = 'Anda Sangat Jahat';
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultText,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
          TextButton(
            onPressed: resetQuiz,
            child: Text('Reset Quiz'),
            style: TextButton.styleFrom(primary: Colors.blue),
          ),
        ],
      ),
    );
  }
}
