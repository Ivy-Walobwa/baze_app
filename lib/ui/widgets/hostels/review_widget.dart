import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../constants.dart';
import '../../../models/hostel.dart';

import '../../widgets/text_button_widget.dart';
class ReviewWidget extends StatelessWidget {
  const ReviewWidget({
    @required this.review,
  });

  final List<SingleReview> review;

  @override
  Widget build(BuildContext context) {
    print(review.length == 0 ? '' : review[0].reviewerName);
    return review.length == 0
        ? Container(
            child: Text(
              'No Reviews',
              style: Theme.of(context)
                  .textTheme
                  .headline3
                  .copyWith(color: whiteColor),
            ),
          )
        : Column(
          children: [
            ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (ctx, idx) => Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CircleAvatar(
                              radius: 20,
                              backgroundImage:
                                  AssetImage(review[idx].reviewerImage)),
                          Text(
                            review[idx].reviewerName,
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1
                                .copyWith(color: yellowColor),
                          ),
                          SizedBox(),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                review[idx].date,
                                style: Theme.of(context)
                                    .textTheme
                                    .caption
                                    .copyWith(color: whiteColor),
                              ),
                              Wrap(
                                children: List.generate(
                                    5,
                                    (index) => Icon(
                                          Icons.star,
                                          size: 16,
                                          color: orangeColor,
                                        )),
                              ),
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 40),
                        child: Text(
                          review[idx].review,
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1
                              .copyWith(color: whiteColor),
                        ),
                      ),
                    ],
                  ),
                ),
                itemCount: review.length,
              ),
            Center(child: TextButtonWidget(text: 'RENT', textColor: brownColor, buttonColor: whiteColor))
          ],
        );
  }
}
