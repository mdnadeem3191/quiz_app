import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  final VoidCallback resetHandler;
  final int score;
  const ResultPage(this.score, this.resetHandler);
  String get phrases {
    String resultText;
    if (score <= 8) {
      resultText = "your taste is not Good";
    } else if (score <= 15) {
      resultText = "your taste is Nice";
    } else {
      resultText = "Your Choice is quite good";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      margin: const EdgeInsets.all(15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            phrases,
            style: const TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
          ),
          const SizedBox(
            height: 30,
          ),
          ElevatedButton(
              onPressed: resetHandler, child: const Text("Try again"))
        ],
      ),
    ));
  }
}
