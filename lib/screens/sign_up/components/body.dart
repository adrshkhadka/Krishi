import 'package:flutter/material.dart';
import 'package:krishibandu/constants.dart';
import 'package:krishibandu/screens/otp/otp_screen.dart';
import 'package:krishibandu/screens/sign_in/sign_in_screen.dart';

import '../../../components/default_buttons.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Image.asset(
              "assets/icons/krishiBandulogo1.jpg",
              height: 100,
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Sign Up to get started",
              style: TextStyle(
                  color: kPrimaryColor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Enter your phone number",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black,fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text("We will send you a 4-digit phone to your phone number",
            style: TextStyle(color: Colors.black,fontSize: 12)),
            SignInForm(),
           
            Padding(
              padding: EdgeInsets.all(40),
              child: DefaultButton(
                text: "Sign-Up",
                press: () {
                  Navigator.pushNamed(context, OTPScreen.routeName);
                },
              ),
            ),
            Text("Already have an account?"),
            TextButton(onPressed: (){
              Navigator.pushNamed(context, SignInScreen.routeName);
            },
            child: Text("Login",
            style: TextStyle(color: kPrimaryColor,decoration: TextDecoration.underline,fontWeight: FontWeight.bold,fontSize: 20),),),
            Spacer(),
            GuideButton(),
          ],
        ),
      
      ),
    );
  }
}

class SignInForm extends StatelessWidget {
  const SignInForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: EdgeInsets.all(50),
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                filled: true,
                hintText: "+91",
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white)),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class GuideButton extends StatelessWidget {
  const GuideButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: SizedBox(
        width: double.infinity,
        height: 50,
        child: ElevatedButton( 
              child: Text('Guide to this app', style: TextStyle(color: kPrimaryColor),),
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
                side: BorderSide(color: kPrimaryColor)
              ),
              onPressed: () {},
            ),
      ),
    );
  }
}