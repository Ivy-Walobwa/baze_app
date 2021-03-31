import 'package:flutter/material.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField(
      {@required this.fieldColor, this.padding = 0, @required this.text});

  final Color fieldColor;
  final double padding;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(padding),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: fieldColor),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: fieldColor),
                ),
                border: UnderlineInputBorder(
                  borderSide: BorderSide(color: fieldColor),
                ),
                hintText: text,
                hintStyle: Theme.of(context)
                    .textTheme
                    .bodyText1
                    .copyWith(color: fieldColor),
              ),
            ),
          ),
          SizedBox(
            width: 32,
          ),
          Icon(
            Icons.search,
            color: fieldColor,
          )
        ],
      ),
    );
  }
}
