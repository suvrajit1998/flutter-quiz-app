import 'package:flutter/material.dart';
import 'package:my_first_app/result.dart';

import './quiz.dart';
import './result.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;
  final _questions = const [
    {
      'questinText': 'What\'s your favorite color?',
      'answer': [
        {'text': 'Red', 'score': 5},
        {'text': 'White', 'score': 15},
        {'text': 'Black', 'score': 10},
        {"text": 'Green', 'score': 3}
      ]
    },
    {
      'questinText': 'What\'s your favorite animals?',
      'answer': [
        {'text': 'Rabbit', 'score': 12},
        {'text': 'Snake', 'score': 5},
        {'text': 'Elephant', 'score': 3},
        {'text': 'Lion', 'score': 10}
      ]
    },
    {
      'questinText': 'What\'s your favorite instructor?',
      'answer': [
        {'text': 'Max', 'score': 10},
        {'text': 'Mosh', 'score': 15},
        {'text': 'Andaw', 'score': 5},
        {'text': 'Stephen', 'score': 20}
      ]
    }
  ];

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('We have more question !');
    } else {
      print('No more Question !');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'My First App',
          ),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questions: _questions,
                questionIndex: _questionIndex,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
