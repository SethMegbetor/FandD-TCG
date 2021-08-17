import 'package:flutter/widgets.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  var questionIndex = 0;

  void answerQuestions() {
    questionIndex = questionIndex + 1;
    print('Answer chosen!');
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favorite color?',
      'What\'s your favorite animal?'
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My first App'),
        ),
        body: Column(
          children: [
            Text(questions[0]),
            ElevatedButton(
              child: Text('Answer 1'),
              onPressed: answerQuestions,
            ),
            ElevatedButton(
              child: Text('Answer 2'),
              onPressed: () => print('Answer 2 chosen'),
            ),
            ElevatedButton(
              child: Text('Answer 3'),
              onPressed: () {
                //...
                print('Answer 3 chosen');
              },
            ),
          ],
        ),
      ),
    );
  }
}
