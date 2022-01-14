import 'package:flutter/material.dart';

class ReuseText extends StatelessWidget {
  final String qsnText;
  const ReuseText(this.qsnText);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        // padding: EdgeInsets.all(10),
        margin: const EdgeInsets.fromLTRB(30, 150, 10, 0),
        child: Text(
          qsnText,
          style: const TextStyle(fontSize: 27, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
