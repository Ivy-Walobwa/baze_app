import 'package:baze/ui/widgets/search_text_field.dart';
import 'package:flutter/material.dart';
import '../../../constants.dart';
import '../../widgets/widgets.dart';

List<String> gender = ['Male', 'Female', 'Intersex'];
List<String> roommate = [
  'Doesn’t drink alcohol',
  'Tidy',
  'Non-smoker',
  'No-drama',
  'Introvert',
  'Parties',
  'Pays rent on time',
  'Focused'
];

class FindRoomiePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SingleChildScrollView(
        physics: ScrollPhysics(),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  child: CircleAvatar(
                    radius: 16,
                    backgroundColor: brownColor,
                    child: Icon(
                      Icons.arrow_back,
                      color: whiteColor,
                      size: 20,
                    ),
                  ),
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                ),
                Text(
                  'Find a Roomie',
                  style: Theme.of(context).textTheme.headline1.copyWith(
                        color: yellowColor,
                      ),
                ),
                Text(
                  'Let’s find you a match:',
                  style: Theme.of(context).textTheme.bodyText1.copyWith(
                        color: brownColor,
                      ),
                ),
                SizedBox(
                  height: 23,
                ),
                buildText(context, 'My ideal room mate should be:'),
                SizedBox(
                  height: 9,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: gender
                      .map((e) => CustomButton(
                            text: e,
                            onTap: () {
                              Navigator.pop(context);
                            },
                            textColor: yellowColor,
                            borderColor: yellowColor,
                          ))
                      .toList(),
                ),
                SizedBox(
                  height: 23,
                ),
                buildText(
                    context, 'The ideal rent I would like to chip in is:'),
                SizedBox(height: 9,),
                Center(
                  child: CustomButton(
                    text: '5000',
                    onTap: () {
                      Navigator.pop(context);
                    },
                    textColor: yellowColor,
                    borderColor: yellowColor,
                  ),
                ),
                SizedBox(height: 23,),
                buildText(context,
                    'The ideal rent for the place i would like to stay ought to be around:'),
                SizedBox(height: 9,),
                Center(
                  child: CustomButton(
                    text: '5000',
                    onTap: () {
                      Navigator.pop(context);
                    },
                    textColor: yellowColor,
                    borderColor: yellowColor,
                  ),
                ),
                SizedBox(height: 23,),
                buildText(
                    context, 'What kind of room mate are you looking for?'),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      SearchTextField(
                          fieldColor: brownColor,
                          text: 'Search Characteristics'),
                      SizedBox(height: 23,),
                      Wrap(
                        spacing: 20,
                        runSpacing: 10,
                        children: roommate
                            .map(
                              (roomie) =>
                                  new CustomButton(text: roomie, onTap: () {}),
                            )
                            .toList(),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 23,),
                buildText(context, 'What kind of room mate are you ?'),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      SearchTextField(
                        fieldColor: brownColor,
                        text: 'Search Characteristics',
                      ),
                      SizedBox(height: 23,),
                      Wrap(
                        spacing: 20,
                        runSpacing: 10,
                        children: roommate
                            .map(
                              (roomie) =>
                                  new CustomButton(text: roomie, onTap: () {}),
                            )
                            .toList(),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 23,),
                buildText(context, 'Available to pair up from when?'),
                SizedBox(height: 9,),
                Center(
                  child: CustomButton(
                    text: 'Immediately',
                    onTap: () {
                      Navigator.pop(context);
                    },
                    textColor: yellowColor,
                    borderColor: yellowColor,
                  ),
                ),
                SizedBox(height: 23,),
                Center(child: buildText(context, 'OR')),
                SizedBox(height: 9,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(),
                    CustomButton(
                      text: 'July',
                      onTap: () {
                        Navigator.pop(context);
                      },
                      textColor: yellowColor,
                      borderColor: yellowColor,
                    ),
                    CustomButton(
                      text: '22',
                      onTap: () {
                        Navigator.pop(context);
                      },
                      textColor: yellowColor,
                      borderColor: yellowColor,
                    ),
                    SizedBox()
                  ],
                ),
                SizedBox(height: 23,),
                Center(
                  child: TextButtonWidget(
                    text: 'SEARCH',
                    textColor: whiteColor,
                    buttonColor: brownColor,
                    onTap: () {
                      Navigator.of(context).pushNamed(roommateResultRoute);
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Text buildText(BuildContext context, String text) {
    return Text(
      text,
      style: Theme.of(context)
          .textTheme
          .headline3
          .copyWith(color: brownColor, height: 1.3),
    );
  }
}
