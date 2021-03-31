import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../hostels_carousel.dart';

class CategoryView extends StatelessWidget {
  CategoryView({@required this.subtitle, @required this.title,});

  final String title;
  final String subtitle;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 32,right: 32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(title,style: Theme.of(context).textTheme.headline2.copyWith(color: yellowColor,decoration: TextDecoration.underline),),
                    CircleAvatar(
                      radius: 16,
                      backgroundColor: whiteColor,
                      child: Icon(Icons.arrow_forward,color: brownColor,size: 20,),
                    )
                  ],
                ),
                onTap: (){Navigator.of(context).pushNamed(hostelResultsPageRoute);},
              ),
              SizedBox(
                height: 4,
              ),
              buildDescriptionText(context, subtitle)
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

