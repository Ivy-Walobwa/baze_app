import 'package:flutter/material.dart';
import '../../../constants.dart';
import '../../../models/hostel.dart';

class LocationWidget extends StatelessWidget {
  const LocationWidget({
    @required this.hostelDetail,
    this.textStyle
  });

  final Hostel hostelDetail;
  final TextStyle textStyle;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          child: Icon(
            Icons.location_on,
            size: 17,
            color: brownColor,
          ),
          radius: 12,
          backgroundColor: yellowColor,
        ),
        SizedBox(
          width: 24,
        ),
        Container(
          constraints:
          BoxConstraints(maxWidth: 200, maxHeight: 100),
          child: Text(
            hostelDetail.location.location.toUpperCase(),
            style: textStyle== null?
            Theme.of(context).textTheme.caption.copyWith(
              color: whiteColor,
            ): textStyle,
          ),
        ),
      ],
    );
  }
}
