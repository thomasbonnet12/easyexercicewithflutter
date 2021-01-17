import 'package:flutter/material.dart';

class Questions extends StatelessWidget {
  final String questionText;

  Questions(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Text(
          questionText,
          style: TextStyle(fontSize: 25),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

var questionIndex = 0;

var questions = [
  {
    'questionText': 'What\'s your favorite color?',
    'answer': [
      {'text': 'Blue', 'score': 10},
      {'text': 'White', 'score': 5},
      {'text': 'Red', 'score': 1}
    ]
  },
  {
    'questionText': 'What\'s your favorite animal?',
    'answer': [
      {'text': 'Dog', 'score': 10},
      {'text': 'Cat', 'score': 5},
      {'text': 'Elephant', 'score': 1}
    ]
  },
  {
    'questionText': 'What\'s your favorite city?',
    'answer': [
      {'text': 'Barcelona', 'score': 5},
      {'text': 'Tokyo', 'score': 10},
      {'text': 'New-York', 'score': 1}
    ]
  },
];
