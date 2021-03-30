import 'package:flutter/material.dart';
import '../../constants.dart';

class Editwidget extends StatelessWidget {
  const Editwidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(3),
      child: Icon(
        Icons.edit,
        color: whiteColor,
        size: 15,
      ),
      decoration: BoxDecoration(
          color: brownColor,
          borderRadius: BorderRadius.all(Radius.circular(3))),
    );
  }
}
