import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../models/hostel.dart';
import '../../../constants.dart';
import '../../widgets/hostels/hostels.dart';
import '../../widgets/rating_widget.dart';
import '../../widgets/text_button_widget.dart';
import '../../widgets/hostels_carousel.dart';
import '../../widgets/nb_widget.dart';
import '../../widgets/conditional_view_with_two_icons.dart';
import '../../../providers/hostel_provider.dart';

class ProfileCardTenant extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    List<Hostel> hostels = Provider.of<List<Hostel>>(context);
    var index = Provider.of<HostelProvider>(context).selectedHostelIdx;

    Hostel hostelDetail = hostels[index];
    var gender = hostelDetail.gender.toString().split('.').last;
    return Scaffold(
        backgroundColor: brownColor,
        body: hostelDetail.reviews == null
            ? Container(
                child: Center(
                  child: Text(
                    'ooops, No data',
                    style: Theme.of(context)
                        .textTheme
                        .headline6
                        .copyWith(color: yellowColor),
                  ),
                ),
              )
            : SingleChildScrollView(
                physics: ScrollPhysics(),
                child: SafeArea(
                  child: Column(
                    children: [
                      ImageWithTag(hostelDetail: hostelDetail),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            buildHostelName(context),
                            SizedBox(
                              height: 17,
                            ),
                            LocationWidget(hostelDetail: hostelDetail),
                            SizedBox(
                              height: 4,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SocialWidget(
                                  iconColor: whiteColor,
                                ),
                                TextButtonWidget(
                                  onTap: () {
                                    Navigator.of(context)
                                        .pushNamed(payRentRoute);
                                  },
                                  text: 'RENT',
                                  textColor: brownColor,
                                  buttonColor: whiteColor,
                                )
                              ],
                            ),
                            Text(
                              'www.alegrohostel.co.ke',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1
                                  .copyWith(
                                      color: yellowColor,
                                      decoration: TextDecoration.underline),
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            ContainerFlapsRow(
                              gender: gender,
                              distanceToCampus:
                                  hostelDetail.location.distanceToCampus,
                              textColor: brownColor,
                              containerColor: whiteColor,
                            ),
                            SizedBox(
                              height: 35,
                            ),
                            ConditionalView(
                              iconColor: whiteColor,
                              text: 'About',
                              conditionalWidget: Text(
                                hostelDetail.about,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText1
                                    .copyWith(color: whiteColor),
                              ),
                            ),
                            ConditionalViewWithTwoIcons(
                                widgetColor: whiteColor,
                                iconWidget: Icon(
                                  Icons.copy,
                                  color: whiteColor,
                                  size: 20,
                                ),
                                text: 'Contacts',
                                conditionalWidget: ListView.builder(
                                  physics: NeverScrollableScrollPhysics(),
                                  shrinkWrap: true,
                                  itemBuilder: (ctx, idx) => Padding(
                                    padding: const EdgeInsets.only(bottom: 8),
                                    child: ContactCard(
                                      hostelContact: hostelDetail.contacts[idx],
                                      containerColor: whiteColor,
                                      textColor: brownColor,
                                    ),
                                  ),
                                  itemCount: hostelDetail.contacts.length,
                                )),
                            ConditionalView(
                              iconColor: whiteColor,
                              text: 'Details',
                              conditionalWidget: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ListView.builder(
                                    shrinkWrap: true,
                                    physics: NeverScrollableScrollPhysics(),
                                    itemBuilder: (ctx, idx) => Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 16),
                                      child: CustomRoundedCheckBox(
                                        hostelDetail: hostelDetail.details[idx],
                                      ),
                                    ),
                                    itemCount: hostelDetail.details.length,
                                  ),
                                  NBWidget(notes: hostelDetail.rentingNote)
                                ],
                              ),
                            ),
                            ConditionalView(
                              iconColor: whiteColor,
                              text: 'Reviews',
                              conditionalWidget: Reviews(
                                hostelReviews: hostelDetail.reviews,
                              ),
                            ),
                            Text(
                              'Similar Hostels',
                              style: Theme.of(context)
                                  .textTheme
                                  .headline2
                                  .copyWith(color: yellowColor),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            HostelsCarousel(),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ));
  }

  Row buildHostelName(BuildContext context) {
    List<Hostel> hostels = Provider.of<List<Hostel>>(context);
    var index = Provider.of<HostelProvider>(context).selectedHostelIdx;
    Hostel hostelDetail = hostels[index];
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          hostelDetail.name,
          style:
              Theme.of(context).textTheme.headline1.copyWith(color: whiteColor),
        ),
        Column(
          children: [
            RatingWidget(
              hostelDetail: hostelDetail,
              color: yellowColor,
            ),
            Text(
              '${hostelDetail.reviews.numberOfReviews} reviews',
              style: Theme.of(context)
                  .textTheme
                  .caption
                  .copyWith(color: whiteColor),
            )
          ],
        )
      ],
    );
  }
}
