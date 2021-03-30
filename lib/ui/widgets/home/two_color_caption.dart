import 'package:flutter/material.dart';
import '../../../constants.dart';
class TwoColorCaption extends StatelessWidget {
  const TwoColorCaption({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Text(
            'Hostel of the week: ',
            style: Theme.of(context)
                .textTheme
                .caption
                .copyWith(color: whiteColor),
          ),
          Text('Lurone Palace',
              style: Theme.of(context)
                  .textTheme
                  .caption
                  .copyWith(color: yellowColor))
        ],
      ),
    );
  }
}