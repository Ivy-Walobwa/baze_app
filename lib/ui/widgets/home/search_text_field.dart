import 'package:flutter/material.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({
    @required this.fieldcolor,
    this.padding = 0
  });

  final Color fieldcolor;
  final double padding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.all(padding),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: fieldcolor),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: fieldcolor),
                ),
                border: UnderlineInputBorder(
                  borderSide: BorderSide(color: fieldcolor),
                ),
                hintText: 'Search Hostel',
                hintStyle: Theme.of(context)
                    .textTheme
                    .bodyText1
                    .copyWith(color: fieldcolor),
              ),
            ),
          ),
          SizedBox(
            width: 32,
          ),
          Icon(
            Icons.search,
            color: fieldcolor,
          )
        ],
      ),
    );
  }
}