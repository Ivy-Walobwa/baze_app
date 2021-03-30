import 'package:flutter/material.dart';
import '../../constants.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HostelsCarousel extends StatelessWidget {
  const HostelsCarousel({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        viewportFraction: 0.35,
        height: 200,
      ),
      items: [1, 2, 3].map((i) {
        return Builder(
          builder: (BuildContext context) {
            return InkWell(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/picana.png',
                    height: 150,
                  ),
                  Text('Mlimani Courts',style: Theme.of(context).textTheme.bodyText1.copyWith(color: whiteColor),),
                  Wrap(
                    children: [
                      Text('4.7',style: Theme.of(context).textTheme.caption.copyWith(color: whiteColor),),
                      Icon(Icons.star,size: 14,color: whiteColor,),
                    ],
                  ),
                ],
              ),
              onTap: (){
              },
            );
          },
        );
      }).toList(),
    );
  }
}