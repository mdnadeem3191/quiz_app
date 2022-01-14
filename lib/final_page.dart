import 'package:flutter/material.dart';
import 'package:quiz_application/reuse_button.dart';
import 'package:quiz_application/reuse_qsn_text.dart';

class FinalPage extends StatelessWidget {
  final Function functionButtonHandler;
  final int indexHandler;
  final List qsnAnsText;
  FinalPage(
      {required this.functionButtonHandler,
      required this.indexHandler,
      required this.qsnAnsText});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ReuseText(qsnAnsText[indexHandler]['questionText']),
        const SizedBox(
          height: 50,
        ),
        ...(qsnAnsText[indexHandler]['answerText']).map((answere) {
          return ReuseButton(
              () => functionButtonHandler(answere['score']), answere['text']);
        }).toList(),
      ],
    );
  }
}
