import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget { 
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestions() {
    setState(() {
    _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {'questionText': 'What\'s your favorite color?', 'answers': ['Black','Green','White'],},

      {'questionText': 'What\'s your favorite animal?', 'answers': ['Rabbit','Spider','Eagle','Vulture','Lion'],},

      {'questionText': 'Who is your favourite instructor?', 'answers': ['Brad','Spider','Max','Colt','Angela'],},
      
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My first App'),
        ),
        body: Column(
          children: [
            Question(questions[_questionIndex],),
            Answer(_answerQuestions),
            Answer(_answerQuestions),
            Answer(_answerQuestions),
          ],
        ),
      ),
    );
  }
}
