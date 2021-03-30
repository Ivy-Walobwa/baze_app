import 'package:flutter/material.dart';

class ContainerFlap extends StatelessWidget {
  const ContainerFlap({
    @required this.text,
    @required this.textColor,
    @required this.containerColor,
  });

  final String text;
  final Color textColor;
  final Color containerColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: containerColor,
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(8))
      ),
      child: Text(
        text,
        style: Theme.of(context).textTheme.caption.copyWith(
            fontWeight: FontWeight.w700, color: textColor),
      ),
    );
  }
}