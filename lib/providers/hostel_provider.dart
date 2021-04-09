import 'package:flutter/material.dart';

class HostelProvider extends ChangeNotifier{

  var _hostelCategories = [
    {'title': 'Hostels on a budget', 'subtitle': 'The cheapest hostels around campus.',},
    {'title': 'Clean and secure', 'subtitle': 'Simple pleasures that go a long way.',},
    {'title': 'Nearest to Campus', 'subtitle': 'Don’t be too away from home.',},
    {'title': 'Best Doubles', 'subtitle': 'Cool roomies, cool digs.',},
  ];

  List get hostelCategories{
    return _hostelCategories;
  }


}