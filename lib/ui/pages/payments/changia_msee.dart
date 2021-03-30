import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../constants.dart';
import '../../widgets/payments/payments.dart';
import '../../widgets/widgets.dart';
import '../../widgets/menu/menu_button.dart';

class ChangiaMsee extends StatelessWidget {
  final noteText = [
    'This feature is only available for people on the baze app',
    'You can transfer funds between baze wallets only to changia msee their rent'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        physics: ScrollPhysics(),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Changia Msee',
                    style: Theme.of(context)
                        .textTheme
                        .headline1
                        .copyWith(color: greenColor)),
                Text(
                  'Come through for someone who is falling short on rent this month:',
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1
                      .copyWith(color: brownColor),
                ),
                SizedBox(
                  height: 10,
                ),
                NBWidget(notes: noteText),
                SizedBox(
                  height: 10,
                ),
                // TODO: Implement changia msee form
                NamedTextField(
                  title: 'Name',
                  subtitle: 'The person’s name as it appears on the Baze App:',
                  hinText: 'Alex Muriithi',
                  titleColor: yellowColor,
                ),
                NamedTextField(
                  title: 'Phone number',
                  subtitle: 'The person’s number as used on the Baze App:',
                  hinText: '0729875613',
                  titleColor: yellowColor,
                ),
                NamedTextField(
                  title: 'Amount',
                  subtitle: 'The amount you would like to give:',
                  hinText: '1,500',
                  titleColor: yellowColor,
                ),
                SizedBox(
                  height: 22,
                ),

                Column(
                  children: [
                    Text(
                      'Would you like to notify the other person that you helped them?',
                      style: Theme.of(context)
                          .textTheme
                          .headline2
                          .copyWith(color: yellowColor),
                    ),
                    Text(
                      'They don’t have to know that it was you:',
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1
                          .copyWith(color: brownColor),
                    ),
                    SizedBox(
                      height: 10,
                    ),

                    // TODO: implement yes n no notify person
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        CustomButton(
                          text: 'Yes',
                          buttonColor: yellowColor,
                          textColor: whiteColor,
                          onTap: () {},
                        ),
                        CustomButton(
                          text: 'No',
                          textColor: yellowColor,
                          onTap: () {},
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Center(
                  child: MenuButton(
                      text: 'Changia Msee',
                      buttonColor: greenColor,
                      onTap: () {
                        showDialog<void>(
                          context: context,
                          barrierDismissible: false, // user must tap button!
                          builder: (BuildContext context) {
                            return AlertDialogWidget(
                              proceedText: 'Give',
                              cancelText: 'Cancel',
                              dialogText: TextSpan(children: <TextSpan>[
                                TextSpan(
                                    text: "Confirm that you would like ",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText1
                                        .copyWith(color: brownColor)),
                                TextSpan(
                                    text: "Changia msee ",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText1
                                        .copyWith(color: greenColor)),
                                TextSpan(
                                    text: "rent of ",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText1
                                        .copyWith(color: brownColor)),
                                TextSpan(
                                    text: "Ksh 1500 ",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText1
                                        .copyWith(color: yellowColor)),
                                TextSpan(
                                    text: "from your baze wallet to  ",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText1
                                        .copyWith(color: brownColor)),
                                TextSpan(
                                    text: "Alex Muriithi ",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText1
                                        .copyWith(color: yellowColor)),
                                TextSpan(
                                    text: "on ",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText1
                                        .copyWith(color: brownColor)),
                                TextSpan(
                                    text: "JULY 20TH ",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText1
                                        .copyWith(color: yellowColor)),
                              ]),
                              proceedButtonColor: greenColor,
                              proceedButtonBorderColor: greenColor,
                              proceedTextColor: whiteColor,
                            );
                          },
                        );
                      }),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
