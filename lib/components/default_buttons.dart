import 'package:flutter/material.dart';
import 'package:krishibandu/models/demo_model.dart';

import '../constants.dart';


class DefaultButton extends StatelessWidget {
  
  const DefaultButton({
    Key? key,
    required this.text,
    required this.press,
  }) : super(key: key);
  final String text;
  final void Function() press;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: SizedBox(
        width: double.infinity,
        height: 40,
        child: ElevatedButton(
          onPressed: press,
          style: ElevatedButton.styleFrom(
              primary: kPrimaryLightColor,
              textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          child: Text(text),
        ),
      ),
    );
  }
}
