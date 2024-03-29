import 'package:baze/models/hostel.dart';
import 'package:flutter/material.dart';
import '../../../constants.dart';
import 'review_widget.dart';
import 'package:provider/provider.dart';
import '../../../providers/hostel_provider.dart';

class CustomTabs extends StatefulWidget {
  @override
  _CustomTabsState createState() => _CustomTabsState();
}

class _CustomTabsState extends State<CustomTabs> {
  List<String> tabList = ['Positive', 'Negative'];

  int selectedIndex = 0;
  var currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    var hostelIdx = Provider.of<HostelProvider>(context).selectedHostelIdx;
    List<Hostel> hostels = Provider.of<List<Hostel>>(context);
    List<List<SingleReview>> reviews =  Provider.of<HostelProvider>(context).groupReviews(hostels[hostelIdx]);
    List<SingleReview> groupedReviews = reviews[selectedIndex];

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ...List.generate(tabList.length, (index) {
              return InkWell(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      tabList[index],
                      style: Theme.of(context).textTheme.headline3.copyWith(
                          color: selectedIndex == index
                              ? whiteColor
                              : whiteColor.withOpacity(0.68),
                          height: 2),
                    ),
                    Visibility(
                      visible: selectedIndex == index ? true : false,
                      maintainSize: true,
                      maintainAnimation: true,
                      maintainState: true,
                      child: Column(
                        children: [
                          Container(
                            width: 24,
                            height: 6,
                            decoration: BoxDecoration(
                              color: yellowColor,
                              borderRadius: BorderRadius.all(
                                Radius.circular(8),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                onTap: () {
                  setState(() {
                    selectedIndex = index;
                    currentIndex = index;
                  });
                },
              );
            })
          ],
        ),
        Visibility(
          visible: selectedIndex == currentIndex? true : false,
          maintainSize: true,
          maintainAnimation: true,
          maintainState: true,
          child: Column(
            children: [
              ReviewWidget(review: groupedReviews,),
            ],
          ),
        ),
      ],
    );
  }
}
