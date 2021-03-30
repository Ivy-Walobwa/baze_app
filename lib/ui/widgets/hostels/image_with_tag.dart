import 'package:flutter/material.dart';
import '../../../constants.dart';
import '../../../models/hostel.dart';

class ImageWithTag extends StatelessWidget {
  const ImageWithTag({
    Key key,
    @required this.hostelDetail,
  }) : super(key: key);

  final Hostel hostelDetail;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 220,
      alignment: Alignment.topRight,
      child: Container(
          width: 180,
          height: 46,
          color: yellowColor,
          child: Center(
            child: Wrap(
              children: [
                Icon(
                  Icons.local_offer,
                  size: 16,
                  color: brownColor,
                ),
                SizedBox(
                  width: 17,
                ),
                Text(
                  '${hostelDetail.rent} per month',
                  style: Theme.of(context)
                      .textTheme
                      .caption
                      .copyWith(fontWeight: FontWeight.w700),
                ),
              ],
            ),
          )),
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage(hostelDetail.image),
        fit: BoxFit.cover,
      )),
    );
  }
}
