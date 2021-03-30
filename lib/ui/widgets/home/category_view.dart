import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../hostels_carousel.dart';

class CategoryView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 32,right: 32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Hostels on a budget',style: Theme.of(context).textTheme.headline2.copyWith(color: yellowColor,decoration: TextDecoration.underline),),
                  CircleAvatar(
                    radius: 16,
                    backgroundColor: whiteColor,
                    child: Icon(Icons.arrow_forward,color: brownColor,size: 20,),
                  )
                ],
              ),
              SizedBox(
                height: 4,
              ),
              buildDescriptionText(context, 'The cheapest hostels around campus')
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 31,top: 31),
          child: HostelsCarousel(),
        ),
        SizedBox(height: 20,),
      ],
    );
  }

  Text buildDescriptionText(BuildContext context, String text) {
    return Text(
      text,
      style: Theme.of(context).textTheme.bodyText1.copyWith(color: whiteColor),
    );
  }

}

