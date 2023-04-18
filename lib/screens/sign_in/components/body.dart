import 'package:flutter/material.dart';

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
            SizedBox(height: 20,),
            Image.asset("assets/icons/krishiBandulogo1.jpg", height: 100,),
            SizedBox(height: 30,),
            Text("Welcome back!",style: TextStyle(
              color: Colors.black,fontSize: 28,
              fontWeight: FontWeight.bold
            ),),
            SizedBox(height: 30,),
            Text("Enter your phone number",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.black),),
            SignInForm(),
            Padding(
              padding: EdgeInsets.all(40),
              child: DefaultButton(
                text: "Login",
                press: (){},
                
              ),
            )
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
                  borderSide: BorderSide(color: Colors.white)
                ),
              ),
            )
          ],
        ),
      
      ),
    );
  }
}