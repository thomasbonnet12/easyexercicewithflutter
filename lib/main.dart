import 'package:flutter/material.dart';
import 'package:flutter_first_application/answers.dart';
import 'questions.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  void answerQuestion() {
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
        body: Column(
          children: [
            Questions(questions[questionIndex]['questionText']),
            SizedBox(height: 20),
            ...(questions[questionIndex]['answer'] as List<String>)
                .map((answer) {
              return Answer(answerQuestion, answer);
            }).toList(),
          ],
        ),
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
