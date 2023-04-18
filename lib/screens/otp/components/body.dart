import 'package:flutter/material.dart';
import 'package:krishibandu/components/default_buttons.dart';
import 'package:krishibandu/constants.dart';
import 'package:krishibandu/screens/sign_in/components/body.dart';
import 'package:krishibandu/screens/sign_in/sign_in_screen.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(children: 
      [
        Image.asset("assets/images/otp1.jpg"),
        Text("Enter code sent to 8427-XXXX-XX",
        style: TextStyle(color: Colors.black),),
        SizedBox(height: 20,),  
        OtpForm(),
        SizedBox(height: 10,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [ 
             Text("You will receive OTP within"),
             SizedBox(width: 5,),
             Text("04:50",style: TextStyle(color: kPrimaryColor),),
             SizedBox(
              width: 5,
            ),
             Text("min")  
          ],
        ),
        SizedBox(height: 10,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Text("Didn't receive OTP?"),
          SizedBox(width: 5,),
          Text("Resend OTP", style: TextStyle(color: kPrimaryColor,fontWeight: FontWeight.bold))
        ],), 
        SizedBox(height: 100,),
        DefaultButton(text: "Verify and Create account", press: (){
          Navigator.pushNamed(context, SignInScreen.routeName);
        })          
      ]),
    );
  }
}

class OtpForm extends StatelessWidget {
  const OtpForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Form(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 50,
            child: TextFormField(
           
              textAlign: TextAlign.center,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                contentPadding: EdgeInsets.all(10),
              ),
            ),
          ),
          SizedBox(width: 16),
          SizedBox(
            width: 50,
            child: TextFormField(
          
              textAlign: TextAlign.center,
              keyboardType: TextInputType.number,
             
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                contentPadding: EdgeInsets.all(10),
              ),
            ),
          ),
          SizedBox(width: 16),
          SizedBox(
            width: 50,
            child: TextFormField(  
              textAlign: TextAlign.center,
              keyboardType: TextInputType.number,
       
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                contentPadding: EdgeInsets.all(10),
              ),
            ),
          ),
          SizedBox(width: 16),
          SizedBox(
            width: 50,
            child: TextFormField(    
              textAlign: TextAlign.center,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                contentPadding: EdgeInsets.all(10),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
