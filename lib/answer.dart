import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      // padding: EdgeInsets.all(10),
      color: Colors.black,
      child: ElevatedButton(
        child: Text(
          answerText,
        ),
        onPressed: selectHandler,
      ),
    );
  }
}
