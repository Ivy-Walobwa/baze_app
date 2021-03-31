import 'package:flutter/material.dart';
import '../../../constants.dart';
import '../../widgets/home/hostel_list_tile.dart';
import '../../../fake_repository.dart';

class ResultsPage extends StatelessWidget {
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
                      SizedBox(width: 15,),
                      Text(
                        'Home',style: Theme.of(context).textTheme.headline3.copyWith(color: whiteColor,height: 1),
                      ),
                    ],
                  ),
                  onTap: () {
                    Navigator.of(context).pushNamed(tenantHomeRoute);
                  },
                ),
                SizedBox(height: 16,),
                Text('Baze found ${hostelsAvailable.length} places for you', style: Theme.of(context).textTheme.bodyText1.copyWith(color: whiteColor),),
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
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
