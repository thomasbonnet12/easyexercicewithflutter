import 'package:flutter/material.dart';
import 'package:flutter_first_application/quiz.dart';
import 'package:flutter_first_application/result.dart';

import 'questions.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _totalScore = 0;
  void answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      questionIndex = questionIndex + 1;
    });
    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text('MyApp'),
          ),
        ),
        body: questionIndex < questions.length
            ? Quiz(
                questions: questions,
                answerQuestion: answerQuestion,
                questionIndex: questionIndex)
            : Result(),
      ),
    );
  }
}

//               FlatButton(
//                   child: Text('FlatButton'),
//                   onPressed: () {
//                     answerQuestion();
//                   }),
//               TextButton(
//                   child: Text('New-TextButton'),
//                   onPressed: () {
//                     answerQuestion();
//                   }),

//               RaisedButton(
//                   child: Text('RaisedButton'),
//                   onPressed: () {
//                     answerQuestion();
//                   }),
//               ElevatedButton(
//                   child: Text('New-ElevatedButton'),
//                   onPressed: () {
//                     answerQuestion();
//                   }),

//               OutlineButton(
//                   child: Text('OutlineButton'),
//                   onPressed: () {
//                     answerQuestion();
//                   }),
//               OutlinedButton(
//                   child: Text('New-OutlinedButton'),
//                   onPressed: () {
//                     answerQuestion();
//                   }),
