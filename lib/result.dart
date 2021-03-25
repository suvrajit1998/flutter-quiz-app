import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int finalScore;
  final Function resetHandle;

  const Result(this.finalScore, this.resetHandle);

  String get resultPhase {
    String resultText;
    if (finalScore <= 8) {
      resultText = 'You are awesome and innocent !';
    } else if (finalScore <= 12) {
      resultText = 'Pretty likeable!';
    } else if (finalScore <= 16) {
      resultText = 'You are ... Strange?!';
    } else {
      resultText = 'You are so bad!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhase,
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 20,
            ),
          ),
          FlatButton(
            child: Text(
              'Reset Quiz!',
            ),
            textColor: Colors.blue[700],
            onPressed: resetHandle,
          ),
        ],
      ),
    );
  }
}
