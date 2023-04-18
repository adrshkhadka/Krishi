import 'package:flutter/material.dart';
import 'package:krishibandu/screens/sign_up/components/body.dart';

class SignUpScreen extends StatelessWidget {
   static String routeName = "/sign_up";
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}