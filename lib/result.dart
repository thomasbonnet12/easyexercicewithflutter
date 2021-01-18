import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetTheQuiz;

  Result(this.resultScore, this.resetTheQuiz);

  String get resultPhrase {
    var resultText;
    if (resultScore <= 8) {
      resultText = 'Your choises are interesting';
    } else if (resultScore <= 12) {
      resultText = 'You are good !';
    } else if (resultScore <= 20) {
      resultText = 'You really got nice taste';
    } else {
      resultText = 'What is going on?';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              resultPhrase,
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
          Text('Your score is $resultScore',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
          RaisedButton(
              onPressed: resetTheQuiz,
              child: Text('Start the quiz again?',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold))),
        ],
      ),
    ));
  }
}
