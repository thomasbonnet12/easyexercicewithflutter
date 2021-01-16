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
    'answer': ['Blue', 'White', 'Red']
  },
  {
    'questionText': 'What\'s your favorite animal?',
    'answer': ['Dog', 'Cat', 'Elephant']
  },
  {
    'questionText': 'What\'s your favorite city?',
    'answer': ['Barcelona', 'Tokyo', 'New-York']
  },
];
