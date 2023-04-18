import 'package:flutter/material.dart';

import '../../../constants.dart';

class OnboardingContent extends StatelessWidget {
  const OnboardingContent({Key? key, required this.text, required this.image})
      : super(key: key);
  final String text, image;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // Handle arrow icon click
          },
        ),
        actions: [
          TextButton(
            onPressed: () {
              // Handle "Skip" button click
            },
            child: Text(
              'Skip',
              style: TextStyle(color: kPrimaryColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 25),
            ),
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children:[
                // Text(
                //   text,
                //   style: TextStyle(
                //       color: kPrimaryColor, fontWeight: FontWeight.bold, fontSize: 30),
                //   textAlign: TextAlign.end,
                // ),
              ] 
            ),
            Spacer(),
            Image.asset(
              image,
              width: 335,
            ),
            Text("Crop Doctor", style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),),
            SizedBox(height: 10,),
            Padding(padding: EdgeInsets.only(left: 20,right: 20),
            child: Text("Get professional consultant from our expert by uploading picture of your crop issue.Also get all your queries answered along with tips",textAlign: TextAlign.center,
            style: TextStyle(color: Colors.black),)),
          ],
        ),
      ),
    );
  }
}
