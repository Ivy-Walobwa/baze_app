import 'package:flutter/material.dart';

class BottomMenuLinks extends StatelessWidget {
  const BottomMenuLinks({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'About',
              style: Theme.of(context).textTheme.bodyText1,
            ),
            Icon(
              Icons.circle,
              size: 4,
            ),
            Text('Terms and Conditions',
                style: Theme.of(context).textTheme.bodyText1),
            Icon(
              Icons.circle,
              size: 4,
            ),
            Text('Privacy',
                style: Theme.of(context).textTheme.bodyText1)
          ],
        ),
        SizedBox(
          height: 40,
        ),
        Text(
          'Sign Out',
          style: Theme.of(context)
              .textTheme
              .bodyText1
              .copyWith(decoration: TextDecoration.underline),
        ),
      ],
    );
  }
}
