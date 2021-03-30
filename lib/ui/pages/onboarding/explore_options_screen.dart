import 'package:flutter/material.dart';

import '../../../constants.dart';

class ExploreOptionsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: creamBackGround,
      body: Center(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 56,
                ),
                Text(
                  'Explore as a:',
                  style: Theme.of(context)
                      .textTheme
                      .headline1
                      .copyWith(color: brownColor),
                ),
                SizedBox(
                  height: 54,
                ),
                buildTenantContainer(context),
                SizedBox(
                  height: 83,
                ),
                buildLandLordContainer(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container buildLandLordContainer(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: brownColor,
        borderRadius: BorderRadius.horizontal(
            right: Radius.circular(8), left: Radius.circular(15)),
      ),
      child: InkWell(
        child: Row(
          children: [
            Expanded(
              child: Image.asset('assets/explore2.png'),
            ),
            Expanded(
                child: Center(
                    child: Text(
              'Landlord',
              style: Theme.of(context)
                  .textTheme
                  .headline2
                  .copyWith(color: yellowColor),
            ))),
          ],
        ),
        onTap: () {
          Navigator.of(context).pushNamed(landLordHomeRoute);
        },
      ),
    );
  }

  Container buildTenantContainer(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: orangeColor,
        borderRadius: BorderRadius.horizontal(
            left: Radius.circular(8), right: Radius.circular(15)),
      ),
      child: InkWell(
        child: Row(
          children: [
            Expanded(
                child: Center(
                    child: Text(
              'Tenant',
              style: Theme.of(context)
                  .textTheme
                  .headline2
                  .copyWith(color: whiteColor),
            ))),
            Expanded(
              child: Image.asset('assets/explore1.png'),
            ),
          ],
        ),
        onTap: () {
          Navigator.of(context).pushNamed(tenantHomeRoute);
        },
      ),
    );
  }
}
