import 'package:flutter/material.dart';

import '../../../constants.dart';

class OnboardingContent extends StatelessWidget {
  const OnboardingContent({Key? key, required this.text, required this.image})
      : super(key: key);
  final String text, image;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        Text(
          text,
          style: TextStyle(
              color: kPrimaryColor, fontWeight: FontWeight.bold, fontSize: 30),
          textAlign: TextAlign.end,
        ),
        Spacer(),
        Image.asset(
          image,
          width: 335,
        ),
      ],
    );
  }
}
