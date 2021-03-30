import 'package:flutter/material.dart';
import '../../../constants.dart';
import 'custom_button.dart';

class PaymentMethodsContainer extends StatelessWidget {
  const PaymentMethodsContainer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
      child: Column(
        children: [
          Text(
            'Payment Methods',
            style: Theme.of(context)
                .textTheme
                .headline2
                .copyWith(color: brownColor),
          ),
          SizedBox(height: 13,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomButton(text: 'Baze', onTap: (){},textColor: yellowColor, buttonColor: brownColor, ),
              CustomButton(
                text: 'MPESA',
                onTap: () {},
                textColor: whiteColor,
                buttonColor: greenColor,
                borderColor: greenColor,
              ),
              CustomButton(
                text: 'Card',
                onTap: () {},
                textColor: whiteColor,
                buttonColor: blueColor,
                borderColor: blueColor,
              )
            ],
          )
        ],
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          ),
          border: Border.all(color: yellowColor)),
    );
  }
}
