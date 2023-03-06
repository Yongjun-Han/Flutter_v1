import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String innerText;
  final Color bgColor;
  final Color textColor;

  const Button(
      {super.key,
      required this.innerText,
      required this.bgColor,
      required this.textColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 50),
        child: Text(
          innerText,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: textColor,
          ),
        ),
      ),
    );
  }
}
