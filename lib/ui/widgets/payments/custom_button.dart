import 'package:flutter/material.dart';
import '../../../constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    @required this.text,
    this.textColor,
    this.buttonColor,
    this.borderColor,
    @required this.onTap
  }) ;

  final String text;
  final Color textColor;
  final Color buttonColor;
  final Color borderColor;
final Function onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 12
            , horizontal: 22),
        decoration: BoxDecoration(
            color: buttonColor,
            border: Border.all(color: borderColor != null ? borderColor : yellowColor),
            borderRadius: BorderRadius.all(Radius.circular(2),)),
        child: Text(text,
            style: Theme.of(context).textTheme.bodyText1.copyWith(color: textColor)),
      ),
      onTap: onTap,
    );
  }
}
