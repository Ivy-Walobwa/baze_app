import 'package:flutter/material.dart';

import 'constants.dart';
import 'ui/pages/pages.dart';


class CustomRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch(settings.name){
      case exploreOptionsRoute:
        return MaterialPageRoute(builder: (_)=> ExploreOptionsScreen());
      case tenantHomeRoute:
        return MaterialPageRoute(builder: (_)=>TenantHomePage());
      case landLordHomeRoute:
        return MaterialPageRoute(builder: (_)=> LandLordHomePage());
      case hostelProfileCardRoute:
        var arguments = settings.arguments;
        return MaterialPageRoute(builder: (_)=> ProfileCardTenant(hostelDetail: arguments,));
      case changiaMseePageRoute:
        return MaterialPageRoute(builder: (_)=> ChangiaMsee());
      case payRentRoute:
        return MaterialPageRoute(builder: (_)=> PayRentPage());
    }
  }
}