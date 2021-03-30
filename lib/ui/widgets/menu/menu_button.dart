import 'package:flutter/material.dart';
import '../../../constants.dart';

class MenuButton extends StatelessWidget {
  const MenuButton({@required this.onTap, @required this.text, @required this.buttonColor});

  final Function onTap;
  final String text;
  final Color buttonColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 236,
      child: TextButton.icon(
        onPressed: onTap,
        icon: Icon(
          Icons.support,
          size: 23,
        ),
        label: Text(
         text,
          style: Theme.of(context)
              .textTheme
              .headline3
              .copyWith(color: whiteColor, height: 2),
        ),
        style: TextButton.styleFrom(
            backgroundColor:buttonColor, primary: whiteColor),
      ),
    );
  }
}
