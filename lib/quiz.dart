import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';

import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import './questions.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  // const Quiz({Key key}) : super(key: key);
//
  Function answer;
  List<Map<String, Object>> questions;
  var questionIndex;

  Quiz(
      {@required this.answer,
      @required this.questions,
      @required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[questionIndex]['question']),
        ...(questions[questionIndex]['answer'] as List<Map<String, Object>>)
            .map((answerText) {
          return Answer(() => answer(answerText['score']), answerText['text']);
        }).toList(),
      ],
    );
  }
}
