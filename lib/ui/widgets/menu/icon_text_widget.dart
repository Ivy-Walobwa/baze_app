import 'package:flutter/material.dart';
import '../../../constants.dart';

class IconTextWidget extends StatelessWidget {
  const IconTextWidget({@required this.icon, @required this.text});

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          size: 27,
        ),
        SizedBox(
          width: 20,
        ),
        Text(text,style: Theme.of(context).textTheme.headline2.copyWith(color: brownColor),),
      ],
    );
  }
}
