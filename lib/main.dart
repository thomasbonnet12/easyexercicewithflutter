import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  void answerQuestion() {
    print('answer choosen');
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favorite color?',
      'What\'s your favorite animal?',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              'MyApp',
            ),
          ),
        ),
        body: Center(
          child: Column(
            children: [
              Text('question'),
              SizedBox(height: 20),
              FlatButton(
                  child: Text('FlatButton'),
                  onPressed: () {
                    answerQuestion();
                  }),
              TextButton(
                  child: Text('New-TextButton'),
                  onPressed: () {
                    answerQuestion();
                  }),
              SizedBox(height: 30),
              RaisedButton(
                  child: Text('RaisedButton'),
                  onPressed: () {
                    answerQuestion();
                  }),
              ElevatedButton(
                  child: Text('New-ElevatedButton'),
                  onPressed: () {
                    answerQuestion();
                  }),
              SizedBox(height: 30),
              OutlineButton(
                  child: Text('OutlineButton'),
                  onPressed: () {
                    answerQuestion();
                  }),
              OutlinedButton(
                  child: Text('New-OutlinedButton'),
                  onPressed: () {
                    answerQuestion();
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
