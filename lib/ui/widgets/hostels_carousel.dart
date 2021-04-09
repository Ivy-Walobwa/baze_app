import 'package:flutter/material.dart';
import '../../constants.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:provider/provider.dart';
import '../../models/hostel.dart';

class HostelsCarousel extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    List<Hostel> hostelsAvailable = Provider.of<List<Hostel>>(context);

    return CarouselSlider(
      options: CarouselOptions(
        viewportFraction: 0.35,
        height: 200,
      ),
      items: hostelsAvailable.map((hostel) {
        return Builder(
          builder: (BuildContext context) {
            return InkWell(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    hostel.image,
                    height: 150,
                  ),
                  Expanded(child: Text(hostel.name,style: Theme.of(context).textTheme.bodyText1.copyWith(color: whiteColor),)),
                  Wrap(
                    children: [
                      Text(hostel.rating,style: Theme.of(context).textTheme.caption.copyWith(color: whiteColor),),
                      Icon(Icons.star,size: 14,color: whiteColor,),
                    ],
                  ),
                ],
              ),
              onTap:(){
                Navigator.of(context).pushNamed(hostelProfileCardRoute,arguments: hostel);
              },
            );
          },
        );
      }).toList(),
    );
  }
}