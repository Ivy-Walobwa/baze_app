import 'package:baze/constants.dart';
import 'package:flutter/material.dart';

class NamedTextField extends StatelessWidget {
  NamedTextField({@required this.title,this.subtitle, this.hinText,@required this.titleColor});
  final String title;
  final String subtitle;
  final String hinText;
  final Color titleColor;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: Theme.of(context)
                .textTheme
                .headline2
                .copyWith(color: titleColor),
          ),
          if(subtitle != null) Text(subtitle,
              style: Theme.of(context)
                  .textTheme
                  .caption
                  .copyWith(color: brownColor)),
          SizedBox(height: 8,),
          TextFormField(
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(vertical: 0,horizontal: 10),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: yellowColor,),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: yellowColor,),
              ),
              hintText: hinText,
              hintStyle: Theme.of(context).textTheme.headline3.copyWith(color: brownColor)
            ),
          ),
        ],
      ),
    );
  }
}
