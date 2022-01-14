import 'package:flutter/material.dart';
import 'package:quiz_application/final_page.dart';
import 'package:quiz_application/result_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final List _qsnAnsList = const [
    {
      'questionText': 'What is your Favourite Food',
      'answerText': [
        {"text": 'Chicken', 'score': 8},
        {"text": 'Paneer', 'score': 7},
        {"text": 'Fish', 'score': 10},
        {"text": 'Veggies', 'score': 6}
      ]
    },
    {
      'questionText': 'What is your Hobby',
      'answerText': [
        {"text": 'Read Books', 'score': 10},
        {"text": 'Operate Phone', 'score': 5},
        {"text": 'Playing Physical Games', 'score': 9},
        {"text": 'Nothing', 'score': 0}
      ]
    },
    {
      'questionText': 'What is your Favourite Car Company',
      'answerText': [
        {"text": 'Ferrari', 'score': 10},
        {"text": 'Lamboghni', 'score': 10},
        {"text": 'Tata', 'score': 10},
        {"text": 'Audi', 'score': 10}
      ]
    },
  ];

  var _index = 0;
  var _totalScore = 0;
  void _reCallFunction(int score) {
    _totalScore = _totalScore + score;

    setState(() {
      _index = _index + 1;
    });
  }

  void _resetFunction() {
    setState(() {
      _index = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Know Your Self"),
        ),
        body: _index < _qsnAnsList.length
            ? FinalPage(
                functionButtonHandler: _reCallFunction,
                indexHandler: _index,
                qsnAnsText: _qsnAnsList,
              )
            : ResultPage(_totalScore, _resetFunction),
      ),
    );
  }
}
