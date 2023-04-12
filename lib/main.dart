import 'package:flutter/material.dart';
import 'package:krishibandu/constants.dart';
import 'package:krishibandu/routes.dart';
import 'package:krishibandu/screens/onboarding/onboarding_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: TextTheme(
        bodyText1: TextStyle(color: kTextColor),
        bodyText2: TextStyle(color: kTextColor)
        )
      ),
      // home: OnboardingScreen(),
      initialRoute: OnboardingScreen.routeName,
      routes: routes,
    );
  }
}

