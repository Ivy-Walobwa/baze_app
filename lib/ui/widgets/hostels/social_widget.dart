import 'package:flutter/material.dart';

class SocialWidget extends StatelessWidget {
  const SocialWidget({
    @required this.iconColor
  });
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.person,
          color: iconColor,
        ),
        Icon(
          Icons.person,
          color: iconColor,
        ),
        Icon(
          Icons.person,
          color: iconColor,
        )
      ],
    );
  }
}
