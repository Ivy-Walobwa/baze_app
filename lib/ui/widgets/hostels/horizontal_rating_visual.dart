import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class HorizontalRatingVisual extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      ...List.generate(5, (index) =>  Padding(
        padding: const EdgeInsets.only(bottom: 4),
        child: Row(
          children: [
            Text(
              '${index+1}',
              style: Theme.of(context)
                  .textTheme
                  .caption
                  .copyWith(fontWeight: FontWeight.w700, color: whiteColor),
            ),
            SizedBox(width: 23,),
            Stack(children: [
              Container(
                width: 120,
                height: 8,
                decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.all(Radius.circular(8),),),
              ),
              Container(
                width: 120*(index+1)/5,
                height: 8,
                decoration: BoxDecoration(
                  color: yellowColor,
                  borderRadius: BorderRadius.all(Radius.circular(8),),),
              ),
            ],),
          ],
        ),
      )).reversed,
    ],);
  }
}
