import 'package:flutter/material.dart';
import 'package:krishibandu/screens/home/components/categories_widget.dart';
import 'package:krishibandu/screens/home/components/item_widget.dart';

import 'home_app_bar.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          HomeAppBar(),
          Container(
            padding: EdgeInsets.only(top: 15),
            decoration: BoxDecoration(
              color: Color(0xFFEDECF2),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(35),
                topRight: Radius.circular(35)
              )
            ),
          ),
          Categories(),
          CategoryWidget(),
          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.symmetric(vertical: 20,horizontal: 10),
            child: Text(
              "Shop by Brands",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black
              ),
            ),
          ),
         ItemWidget()
        ],
      ),
    );
  }
}