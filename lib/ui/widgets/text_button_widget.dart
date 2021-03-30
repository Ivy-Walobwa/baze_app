import 'package:flutter/material.dart';

class TextButtonWidget extends StatelessWidget {
  const TextButtonWidget({
    @required this.text,
    @required this.textColor,
    @required this.buttonColor,
    this.onTap,
  });

  final String text;
  final Color textColor;
  final Color buttonColor;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onTap,
      child: Text(
        text,
      ),
      style: TextButton.styleFrom(
        backgroundColor: buttonColor,
        primary: textColor,
      ),
    );
  }
}
