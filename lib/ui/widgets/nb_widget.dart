import 'package:flutter/material.dart';
import '../../constants.dart';

class NBWidget extends StatelessWidget {
  const NBWidget({@required this.notes});

  final List<String> notes;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('NB:',
            style: Theme.of(context)
                .textTheme
                .caption
                .copyWith(fontWeight: FontWeight.w700, color: yellowColor)),
        ...notes.map((e) => Text(
          '-$e'.toUpperCase(),
          style: Theme.of(context)
              .textTheme
              .caption
              .copyWith(fontWeight: FontWeight.w700, color: yellowColor),
        )),
      ],
    );
  }
}
