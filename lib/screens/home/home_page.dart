import 'package:flutter/material.dart';
import 'package:krishibandu/screens/home/components/body.dart';


class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  static String routeName = "/homepage";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}