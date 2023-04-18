import "package:flutter/material.dart";
import 'package:krishibandu/screens/onboarding/onboarding_screen.dart';
import 'package:krishibandu/screens/otp/otp_screen.dart';
import 'package:krishibandu/screens/sign_in/sign_in_screen.dart';
import 'package:krishibandu/screens/sign_up/sign_up.dart';

final Map<String, WidgetBuilder> routes = {
  OnboardingScreen.routeName: (context) => OnboardingScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  OTPScreen.routeName: (context) => OTPScreen()
};