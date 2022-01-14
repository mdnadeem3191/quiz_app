import 'package:flutter/material.dart';

class ReuseButton extends StatelessWidget {
  final VoidCallback clkButton;
  final String textClickButton;

  const ReuseButton(this.clkButton, this.textClickButton);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: clkButton,
        child: Text(
          textClickButton,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
