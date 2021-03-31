import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../widgets/home/hostel_list_tile.dart';
import '../../../fake_repository.dart';
import '../../widgets/home/home.dart';
import '../../widgets/text_button_widget.dart';
import '../menu/menu.dart';
import '../../widgets/menu/icon_text_widget.dart';

var categories = [
  {'title': 'Hostels on a budget', 'subtitle': 'The cheapest hostels around campus.',},
  {'title': 'Clean and secure', 'subtitle': 'Simple pleasures that go a long way.',},
  {'title': 'Nearest to Campus', 'subtitle': 'Don’t be too away from home.',},
  {'title': 'Best Doubles', 'subtitle': 'Cool roomies, cool digs.',},
];

class TenantHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: brownColor,
      drawer: MenuPage(
        menuTextColor: yellowColor,
        imageString: 'assets/reviewer.png',
        userName: 'Majid Michael',
        buttonText: 'Chaangia Msee',
        buttonColor: greenColor,
        onTap: () {
          Navigator.of(context).popAndPushNamed(changiaMseePageRoute);
        },
        iconTextWidgets: [IconTextWidget(
          icon: Icons.people_alt_outlined,
          text: 'Find a roomie',
        ),
          IconTextWidget(
            icon: Icons.payments,
            text: 'My money',
          ),
        ],
      ),
      appBar: AppBar(
        elevation: 0,
        leading: Builder(builder: (context) {
          return GestureDetector(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Icon(Icons.menu),
            ),
            onTap: () => Scaffold.of(context).openDrawer(),
          );
        }),
        actions: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Icon(Icons.notifications),
          )
        ],
        title: Text(
          'Karibu home Majid',
          style:
          Theme
              .of(context)
              .textTheme
              .headline3
              .copyWith(color: whiteColor),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        physics: ScrollPhysics(),
        child: Column(
          children: [
            SearchTextField(fieldColor: whiteColor, padding: 32,text: 'Search Hostel',),
            Image.asset('assets/weekhostel.png'),
            TwoColorCaption(),
            TopRatingTitle(),
            SizedBox(
              height: 20,
            ),
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (ctx, idx) =>
                  Padding(
                    padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                    child: InkWell(
                      child: HostelListTile(
                        hostel: hostelsAvailable[idx],
                        index: idx,
                      ),
                      onTap: () {
                        Navigator.pushNamed(context, hostelProfileCardRoute,
                            arguments: hostelsAvailable[idx]);
                      },
                    ),
                  ),
              itemCount: hostelsAvailable.length,
            ),
            SizedBox(
              height: 30,
            ),
            ...categories.map((e) => CategoryView(title: e['title'],subtitle: e['subtitle'],)),
            Text(
              'Would you like to find a roomie?',
              style: Theme
                  .of(context)
                  .textTheme
                  .bodyText1
                  .copyWith(color: whiteColor),
            ),
            TextButtonWidget(
              text: 'FIND A ROOMIE',
              textColor: brownColor,
              buttonColor: whiteColor,
              onTap: () {
                Navigator.of(context).pushNamed(findARoomieRoute);
              },
            ),
            SizedBox(
              height: 54,
            ),
          ],
        ),
      ),
    );
  }
}
