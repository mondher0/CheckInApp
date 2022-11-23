import 'package:flutter/material.dart';

class CustomTextStyle extends StatelessWidget {
  final String text;
  const CustomTextStyle(this.text, {super.key,  this.fontSize = 30});

  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style:  TextStyle(
          fontSize: fontSize,
          fontWeight: FontWeight.w500,
          letterSpacing: 2,
        ),
      ),
    );
  }
}
