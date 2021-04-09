import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';

import 'constants.dart';
import 'router.dart';
import 'providers/hostel_provider.dart';
import 'models/hostel.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MultiProvider(
    providers: [
      StreamProvider<List<Hostel>>.value(value: HostelProvider().allHostels, initialData: []),
      ChangeNotifierProvider(create: (_)=>HostelProvider()),
    ],
      child: MyApp()));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primaryColor: brownColor,
          accentColor: orangeColor,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          fontFamily: 'Hind Siliguri',
          textTheme: TextTheme(
            headline1: TextStyle(
                fontSize: 39,
                fontWeight: FontWeight.w700,
                height: 1.1,
                letterSpacing: -1.5),
            headline2: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 24,
                height: 1.3,
                letterSpacing: -0.5),
            headline3: TextStyle(
                fontWeight: FontWeight.w500, fontSize: 21, height: 3.1),
            bodyText1: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 19,
                height: 1.5,
                color: brownColor),
            caption: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 15,
                height: 1.3,
                letterSpacing: 0.4),
            button: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 17,
                height: 1.1,
                letterSpacing: 1.25),
            headline6: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 67,
                height: 1.75,
                letterSpacing: -1.5),
          ),
          iconTheme: IconThemeData(
            size: 32,
          )),
      onGenerateRoute: CustomRouter.generateRoute,
      initialRoute: exploreOptionsRoute,
    );
  }
}
