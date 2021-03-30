import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../models/hostel.dart';

class CustomRoundedCheckBox extends StatelessWidget {
  const CustomRoundedCheckBox(
      {@required this.hostelDetail,
      this.onTap,
      this.iconColor = brownColor,
      this.textColor = whiteColor,
      this.borderColor = whiteColor,});

  final HostelDetail hostelDetail;
  final Function onTap;
  final Color iconColor;
  final Color textColor;
  final Color borderColor;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        children: [
          Container(
            height: 24,
            width: 24,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: hostelDetail.available ? borderColor : iconColor,
                border: Border.all(width: 1, color: borderColor)),
            child: Center(
              child: Icon(
                Icons.check,
                size: 20,
                color: iconColor,
              ),
            ),
          ),
          SizedBox(
            width: 15,
          ),
          Expanded(
              child: Text(
            hostelDetail.detail,
            style: Theme.of(context)
                .textTheme
                .bodyText1
                .copyWith(color: textColor),
          ))
        ],
      ),
    );
  }
}
