import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../constants.dart';
import '../../widgets/payments/payments.dart';
import '../../widgets/text_button_widget.dart';

class PayRentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(26.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Confirm and Pay',
                  style: Theme.of(context)
                      .textTheme
                      .headline1
                      .copyWith(color: brownColor),
                ),
                Text(
                  'Please ensure the details below are accurate before you make any payments.',
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1
                      .copyWith(color: brownColor),
                ),
                SizedBox(
                  height: 25,
                ),
                PaymentMethodsContainer(),
                SizedBox(
                  height: 25,
                ),
                Row(
                  children: [
                    Expanded(
                      child: NamedTextField(
                        title: 'My Number',
                        titleColor: brownColor,
                        hinText: '072233098',
                      ),
                    ),
                    SizedBox(
                      width: 18,
                    ),
                    Text(
                      'Enter New Number',
                      style: Theme.of(context).textTheme.bodyText1.copyWith(
                          color: yellowColor,
                          decoration: TextDecoration.underline),
                    )
                  ],
                ),
                NamedTextField(
                  title: 'Paying to:',
                  titleColor: brownColor,
                  hinText: 'Alegro Hotel',
                ),
                Row(
                  children: [
                    Expanded(
                        child: NamedTextField(
                      title: 'Months',
                      titleColor: brownColor,
                      hinText: '4',
                    )),
                    SizedBox(
                      width: 23,
                    ),
                    Expanded(
                        flex: 2,
                        child: NamedTextField(
                          title: 'Room',
                          titleColor: brownColor,
                          hinText: 'G3 [ Double room ]',
                        ))
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'TOTAL:',
                        style: Theme.of(context)
                            .textTheme
                            .headline2
                            .copyWith(color: yellowColor),
                      ),
                      Center(
                        child: Text(
                          '20,000',
                          style: Theme.of(context)
                              .textTheme
                              .headline6
                              .copyWith(color: whiteColor, height: 1),
                        ),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                      color: brownColor,
                      borderRadius: BorderRadius.all(Radius.circular(8))),
                ),
                SizedBox(
                  height: 25,
                ),
                Center(
                  child: TextButtonWidget(
                    text: 'PAY RENT',
                    textColor: whiteColor,
                    buttonColor: brownColor,
                    onTap: () {
                      showDialog<void>(
                        context: context,
                        barrierDismissible: false, // user must tap button!
                        builder: (BuildContext context) {
                          return AlertDialogWidget(
                            cancelText: 'Cancel',
                            proceedText: 'Pay',
                            cancelTextColor: brownColor,
                            proceedTextColor: brownColor,
                            cancelButtonBorderColor: brownColor,
                            proceedButtonColor: yellowColor,
                            proceedButtonBorderColor: yellowColor,
                            dialogText: TextSpan(children: <TextSpan>[
                              TextSpan(
                                  text: "Confirm that you would like to pay rent of ",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText1
                                      .copyWith(color: brownColor)),
                              TextSpan(
                                  text: "Ksh 20,000 ",
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
                                  text: "Alegro Hostel's Baze Wallet",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText1
                                      .copyWith(color: yellowColor)),

                            ]),
                          );
                        },
                      );
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
}
