import 'package:flutter/material.dart';
import 'package:krishibandu/screens/otp/components/body.dart';
class OTPScreen extends StatelessWidget {
  static String routeName = "/otp_screen";
  const OTPScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("OTP Verification"),
        centerTitle: true,
      ),
      body: Body(),
    );
  }
}