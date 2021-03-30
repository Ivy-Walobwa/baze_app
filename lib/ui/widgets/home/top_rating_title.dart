import 'package:flutter/material.dart';
import '../../../constants.dart';

class TopRatingTitle extends StatelessWidget {
  const TopRatingTitle({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 32, top: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Image.asset(
                'assets/Vector.png',
                scale: 4,
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                'Top Rated',
                style: Theme.of(context)
                    .textTheme
                    .headline2
                    .copyWith(color: yellowColor),
              )
            ],
          ),
          SizedBox(
            height: 4,
          ),
          buildDescriptionText(
              context, 'Curated list of top 3 as per Baze users.')
        ],
      ),
    );
  }
  Text buildDescriptionText(BuildContext context, String text) {
    return Text(
      text,
      style: Theme.of(context).textTheme.bodyText1.copyWith(color: whiteColor),
    );
  }
}