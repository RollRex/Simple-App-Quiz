// import 'dart:html';

// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // const MyApp({Key key}) : super(key: key);
  var _questionIndex = 0;
  var totalScore = 0;

  var questions = [
    {
      'question': 'Tempat apa yang akan ada kunjungi?',
      'answer': [
        {'text': 'Pegunungan', 'score': 10},
        {'text': 'Pantai', 'score': 5},
        {'text': 'Mal', 'score': 3},
        {'text': 'Hutan', 'score': 1},
      ],
    },
    {
      'question': 'Apa warna kesukaan anda?',
      'answer': [
        {'text': 'Merah', 'score': 3},
        {'text': 'Biru', 'score': 11},
        {'text': 'Hijau', 'score': 5},
        {'text': 'Hitam', 'score': 9},
      ],
    },
    {
      'question': 'Apa hobi anda?',
      'answer': [
        {'text': 'Sepak Bola', 'score': 1},
        {'text': 'Basket', 'score': 1},
        {'text': 'Berenang', 'score': 1},
        {'text': 'Ngoding', 'score': 1},
      ],
    }
  ];

  void resetQuiz() {
    setState(() {
      _questionIndex = 0;
      totalScore = 0;
    });
  }

  void _answer(int score) {
    //print('Tombol Sudah ditekan!');
    totalScore = totalScore + score;
    setState(() {
      _questionIndex += 1;
    });
    if (_questionIndex < questions.length) {
      print('Masih ada soal beriktunya');
    } else {
      print("sudah tidak ada soal");
    }

    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz Application'),
        ),
        body: _questionIndex < questions.length
            ? Quiz(
                answer: _answer,
                questions: questions,
                questionIndex: _questionIndex,
              )
            : Result(totalScore, resetQuiz),
      ),
    );
  }
}
