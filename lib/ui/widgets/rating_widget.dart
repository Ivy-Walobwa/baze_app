import 'package:flutter/material.dart';
import '../../models/hostel.dart';

class RatingWidget extends StatelessWidget {
  const RatingWidget({
    Key key,
    @required this.hostelDetail,
    @required this.color,
  }) : super(key: key);

  final Hostel hostelDetail;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Text(hostelDetail.rating,style: Theme.of(context).textTheme.caption.copyWith(color: color),),
        Icon(Icons.star,size: 12,color: color,),
      ],
    );
  }
}