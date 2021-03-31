import 'package:flutter/material.dart';
import '../../../constants.dart';

class RoommateResultPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: brownColor,
      body: SingleChildScrollView(
        physics: ScrollPhysics(),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                InkWell(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 16,
                        backgroundColor: whiteColor,
                        child: Icon(
                          Icons.arrow_back,
                          color: brownColor,
                          size: 20,
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        'Home',
                        style: Theme.of(context)
                            .textTheme
                            .headline3
                            .copyWith(color: whiteColor, height: 1),
                      ),
                    ],
                  ),
                  onTap: () {
                    Navigator.of(context).pushNamed(tenantHomeRoute);
                  },
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  'Baze did not find exactly who you were looking for, but we got you.',
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1
                      .copyWith(color: whiteColor),
                ),
                ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (ctx, idx) => Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 8, horizontal: 16),
                      child: Container(
                        height: 136,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                            color: brownColor,
                            border: Border.all(color: yellowColor)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CircleAvatar(
                                radius: 45,
                                child: Image.asset('assets/reviewer2.png'),
                              ),
                              SizedBox(
                                width: 17,
                              ),
                              Expanded(
                                flex: 6,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Alvin Koech',
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline3
                                          .copyWith(
                                              color: whiteColor, height: 2),
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text('60%',
                                            style: Theme.of(context)
                                                .textTheme
                                                .caption
                                                .copyWith(color: whiteColor)),
                                        Stack(children: [
                                          Container(
                                            width: 120,
                                            height: 8,
                                            decoration: BoxDecoration(
                                              color: yellowColor,
                                              borderRadius: BorderRadius.all(Radius.circular(8),),),
                                          ),
                                          Container(
                                            width: (60*120)/100,
                                            height: 8,
                                            decoration: BoxDecoration(
                                              color: whiteColor,
                                              borderRadius: BorderRadius.all(Radius.circular(8),),),
                                          ),
                                        ],)
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(
                                      Icons.bookmark_border,
                                      color: whiteColor,
                                    ),
                                    CircleAvatar(
                                        radius: 20,
                                        backgroundColor: yellowColor,
                                        child: Icon(
                                          Icons.location_on,
                                          size: 20,
                                          color: brownColor,
                                        ))
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      )),
                  itemCount: 3,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
