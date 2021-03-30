import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../models/hostel.dart';

class ContactCard extends StatelessWidget {
  ContactCard({@required this.hostelContact, @required this.containerColor, @required this.textColor});
  final HostelContact hostelContact;
  final Color containerColor;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(14),
      width: double.infinity,
      height: 109,
      decoration: BoxDecoration(
        color: containerColor,
        borderRadius: BorderRadius.all(
          Radius.circular(
            8,
          ),
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage(hostelContact.image)
            ),
          ),
          Expanded(
            flex: 6,
            child: Wrap(
              direction: Axis.vertical,
              children: [
                Text(
                  hostelContact.contactName.toUpperCase(),
                  style: Theme.of(context)
                  .textTheme
                  .headline3
                  .copyWith(color: textColor,height: 1),
                ),
                Text(
                  hostelContact.contactTitle.toUpperCase(),
                  style: Theme.of(context)
                      .textTheme
                      .button
                      .copyWith(color: textColor,height: 1),
                ),
              ],
            ),
          ),
          Expanded(
            child: Wrap(
              direction: Axis.vertical,
              spacing: 16,
              children: [
                buildCircleAvatar(Icons.phone_enabled),
                buildCircleAvatar(Icons.message),
              ],
            ),
          ),
        ],
      ),
    );
  }

  CircleAvatar buildCircleAvatar(IconData icon) {
    return CircleAvatar(
      child: Icon(
        icon,
        color: whiteColor,
        size: 20,
      ),
      radius: 16,
      backgroundColor: brownColor,
    );
  }
}
