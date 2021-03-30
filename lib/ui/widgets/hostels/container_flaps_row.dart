import 'package:flutter/material.dart';
import 'container_flap.dart';

class ContainerFlapsRow extends StatelessWidget {
  ContainerFlapsRow({@required this.gender, @required this.distanceToCampus, @required this.textColor, @required this.containerColor});
  final String gender;
  final String distanceToCampus;
  final Color textColor;
  final Color containerColor;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ContainerFlap(
          text: gender == 'both' ? gender : '$gender only',
          textColor: textColor,
          containerColor: containerColor,
        ),
        SizedBox(
          width: 8,
        ),
        ContainerFlap(
          text: '$distanceToCampus to campus',
          textColor: textColor,
          containerColor: containerColor,
        ),
      ],
    );
  }
}
