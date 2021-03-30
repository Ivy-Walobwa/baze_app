import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../constants.dart';
import '../../../models/hostel.dart';
import 'horizontal_rating_visual.dart';
import 'custom_tabs.dart';

class Reviews extends StatelessWidget {
  Reviews({@required this.hostelReviews});

  final HostelReviews hostelReviews;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.only(top: 40),
                child: Column(
                  children: [
                    Text(
                      hostelReviews.averageRating,
                      style: Theme.of(context)
                          .textTheme
                          .headline6
                          .copyWith(color: yellowColor, height: 0),
                    ),
                    Text(
                      '${hostelReviews.numberOfReviews} reviews',
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1
                          .copyWith(color: whiteColor),
                    ),
                  ],
                ),
              ),
              HorizontalRatingVisual(),
            ],
          ),
          CustomTabs(),
        ],
      ),
    );
  }
}



