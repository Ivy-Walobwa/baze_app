import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../models/hostel.dart';
import '../rating_widget.dart';

class HostelListTile extends StatelessWidget {
  final Hostel hostel;
  final int index;

  const HostelListTile({this.hostel, this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 136,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          color: index == 0 ? yellowColor : brownColor,
          border: Border.all(color: yellowColor)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
                hostel.image != null ? hostel.image : 'assets/picana.png'),
            SizedBox(
              width: 17,
            ),
            Expanded(
              flex: 6,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        hostel.name,
                        style: Theme.of(context)
                            .textTheme
                            .headline3
                            .copyWith(color: whiteColor, height: 2),
                      ),
                      RatingWidget(hostelDetail: hostel, color: whiteColor),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                          hostel.roomsLeft == '0'
                              ? 'FULL'
                              : '${hostel.roomsLeft} rooms left',
                          style: Theme.of(context)
                              .textTheme
                              .caption
                              .copyWith(color: whiteColor)),
                      Text('${hostel.rent} per month',
                          style: Theme.of(context).textTheme.caption.copyWith(
                              fontWeight: FontWeight.w700,
                              color: index == 0 ? whiteColor : yellowColor))
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.bookmark_border,
                    color: whiteColor,
                  ),
                  CircleAvatar(
                      radius: 20,
                      backgroundColor: index == 0 ? brownColor : yellowColor,
                      child: Icon(
                        Icons.location_on,
                        size: 20,
                        color: index == 0 ? whiteColor : brownColor,
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
