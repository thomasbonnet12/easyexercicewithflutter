import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void answerQuestion() {
    setState(() {
      questionIndex = questionIndex + 1;
    });
    print(questionIndex);
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
              Padding(
                padding: const EdgeInsets.all(17.0),
                child: Text(questions[questionIndex]),
              ),
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
