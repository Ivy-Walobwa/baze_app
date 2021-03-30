import 'package:baze/ui/widgets/home/search_text_field.dart';
import 'package:flutter/material.dart';
import '../../../constants.dart';
import '../menu/menu.dart';
import '../../widgets/menu/icon_text_widget.dart';
import '../../../models/hostel.dart';
import '../../../fake_repository.dart';
import '../../widgets/hostels/hostels.dart';
import '../../widgets/widgets.dart';
import '../../widgets/home/tenant_table.dart';

class LandLordHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Hostel hostel = hostelsAvailable[2];
    var gender = hostel.gender.toString().split('.').last;
    return Scaffold(
      backgroundColor: whiteColor,
      drawer: MenuPage(
        menuTextColor: brownColor,
        imageString: 'assets/landlord.png',
        userName: 'Chebet Doris',
        buttonText: 'Post Advert',
        buttonColor: yellowColor,
        onTap: (){},
        iconTextWidgets: [
          IconTextWidget(icon: Icons.apartment, text: 'My Hostel'),
          IconTextWidget(
            icon: Icons.payments,
            text: 'My revenue',
          ),
        ],
      ),
      appBar: AppBar(
        backgroundColor: whiteColor,
        elevation: 0,
        leading: Builder(builder: (context) {
          return GestureDetector(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Icon(
                Icons.menu,
                color: brownColor,
              ),
            ),
            onTap: () => Scaffold.of(context).openDrawer(),
          );
        }),
        actions: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Icon(
              Icons.notifications,
              color: brownColor,
            ),
          )
        ],
        title: Text(
          'Karibu home Doris',
          style: Theme.of(context)
              .textTheme
              .headline3
              .copyWith(color: yellowColor),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        physics: ScrollPhysics(),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 220,
              child: Text(''),
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage(hostel.image),
                fit: BoxFit.cover,
              )),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  buildHostelName(hostel, context, gender),
                  buildAbout(hostel, context),
                  buildContacts(hostel),
                  buildDetails(hostel),
                  buildNewRoomContainer(context),
                  SizedBox(
                    height: 17,
                  ),
                  buildHostelTenants(context),
                  buildRevenueBreakDown(context)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  ConditionalViewWithTwoIcons buildRevenueBreakDown(BuildContext context) {
    return ConditionalViewWithTwoIcons(
                    text: 'Revenue Breakdown',
                    conditionalWidget: Text('Coming Soon', style: Theme.of(context).textTheme.bodyText1.copyWith(color: brownColor),),
                    iconWidget: Icon(
                      Icons.remove_red_eye,
                      color: brownColor,
                    ),
                    widgetColor: brownColor);
  }

  ConditionalView buildHostelTenants(BuildContext context) {
    return ConditionalView(
                  text: 'Hostel Tenants',
                  conditionalWidget: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Expanded(
                              child: SearchTextField(
                            fieldcolor: brownColor,
                          )),
                          SizedBox(
                            width: 30,
                          ),
                          Icon(Icons.filter_alt),
                        ],
                      ),
                      TenantTable(),
                      SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Load Full list of tenants',
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1
                                .copyWith(
                                    color: yellowColor,
                                    decoration: TextDecoration.underline),
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          CircleAvatar(
                            child: Icon(
                              Icons.double_arrow,
                              size: 15,
                              color: whiteColor,
                            ),
                            radius: 12,
                            backgroundColor: yellowColor,
                          )
                        ],
                      )
                    ],
                  ),
                  iconColor: brownColor,
                );
  }

  Container buildNewRoomContainer(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 30, horizontal: 12),
      decoration: BoxDecoration(
          color: yellowColor,
          borderRadius: BorderRadius.all(Radius.circular(8))),
      child: Wrap(
        runSpacing: 20,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'REGISTER NEW ROOM',
                style: Theme.of(context)
                    .textTheme
                    .button
                    .copyWith(color: whiteColor),
              ),
              CircleAvatar(
                child: Icon(
                  Icons.add,
                  color: yellowColor,
                ),
                radius: 16,
                backgroundColor: whiteColor,
              )
            ],
          ),
          Row(
            children: [
              Expanded(
                  child: TextField(
                decoration: InputDecoration(
                    hintText: 'Name of the room',
                    hintStyle: Theme.of(context)
                        .textTheme
                        .bodyText1
                        .copyWith(color: whiteColor)),
              )),
              SizedBox(
                width: 100,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Type of rooms',
                style: Theme.of(context)
                    .textTheme
                    .bodyText1
                    .copyWith(color: whiteColor),
              ),
              TextButtonWidget(
                text: 'Single',
                textColor: whiteColor,
                buttonColor: brownColor,
                onTap: () {},
              ),
              TextButtonWidget(
                text: 'Double',
                textColor: whiteColor,
                buttonColor: brownColor,
                onTap: () {},
              )
            ],
          ),
          Center(
            child: TextButtonWidget(
              text: 'ADD',
              textColor: brownColor,
              buttonColor: whiteColor,
              onTap: () {},
            ),
          )
        ],
      ),
    );
  }

  ConditionalViewWithTwoIcons buildHostelName(
      Hostel hostel, BuildContext context, String gender) {
    return ConditionalViewWithTwoIcons(
      widgetColor: brownColor,
      iconWidget: Editwidget(),
      text: hostel.name,
      conditionalWidget: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 17,
          ),
          LocationWidget(
            hostelDetail: hostel,
            textStyle:
                Theme.of(context).textTheme.caption.copyWith(color: brownColor),
          ),
          SizedBox(
            height: 4,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SocialWidget(
                iconColor: brownColor,
              ),
              TextButtonWidget(
                onTap: () {},
                text: 'RENT',
                textColor: whiteColor,
                buttonColor: yellowColor,
              )
            ],
          ),
          Text(
            'www.alegrohostel.co.ke',
            style: Theme.of(context).textTheme.bodyText1.copyWith(
                color: yellowColor, decoration: TextDecoration.underline),
          ),
          SizedBox(
            height: 12,
          ),
          ContainerFlapsRow(
            gender: gender,
            distanceToCampus: hostel.location.distanceToCampus,
            textColor: whiteColor,
            containerColor: yellowColor,
          )
        ],
      ),
      textStyle:
          Theme.of(context).textTheme.headline1.copyWith(color: yellowColor),
    );
  }

  ConditionalViewWithTwoIcons buildDetails(Hostel hostel) {
    return ConditionalViewWithTwoIcons(
        widgetColor: brownColor,
        iconWidget: Editwidget(),
        text: 'Details',
        conditionalWidget: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (ctx, idx) => Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: CustomRoundedCheckBox(
                  iconColor: whiteColor,
                  textColor: brownColor,
                  borderColor: yellowColor,
                  hostelDetail: hostel.details[idx],
                ),
              ),
              itemCount: hostel.details.length,
            ),
            NBWidget(notes: hostel.rentingNote)
          ],
        ));
  }

  ConditionalViewWithTwoIcons buildContacts(Hostel hostel) {
    return ConditionalViewWithTwoIcons(
        widgetColor: brownColor,
        iconWidget: Editwidget(),
        text: 'Contacts',
        conditionalWidget: ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemBuilder: (ctx, idx) => Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: ContactCard(
              hostelContact: hostel.contacts[idx],
              containerColor: yellowColor,
              textColor: whiteColor,
            ),
          ),
          itemCount: hostel.contacts.length,
        ));
  }

  ConditionalViewWithTwoIcons buildAbout(Hostel hostel, BuildContext context) {
    return ConditionalViewWithTwoIcons(
        widgetColor: brownColor,
        iconWidget: Editwidget(),
        text: 'About',
        conditionalWidget: Text(
          hostel.about,
          style:
              Theme.of(context).textTheme.bodyText1.copyWith(color: brownColor),
        ));
  }
}


