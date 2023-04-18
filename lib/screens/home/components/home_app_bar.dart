import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:krishibandu/constants.dart';
class HomeAppBar extends StatelessWidget {
  const HomeAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kPrimaryColor,
      padding: EdgeInsets.all(25),
      child: Column(
        children: [
          Row(
            children: [
              Icon(
                Icons.sort,
                size: 30,
                color: Colors.white,
              ),
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  "Hi Raj!",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
              Spacer(),
              Badge(
                badgeContent: Text("3"),
                child: InkWell(
                  onTap: () {},
                  child: Icon(
                    Icons.notification_add_outlined,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Badge(
                badgeContent: Text("3"),
                child: InkWell(
                  onTap: () {},
                  child: Icon(
                    Icons.shopping_basket,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 15,),
          SearchBar()
        ],         
      ),
      
    );
  }
}

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Container(
            // margin: EdgeInsets.symmetric(horizontal: 15),
            // padding: EdgeInsets.symmetric(horizontal: 15),
            height: 50,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15)
            ),
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 15),
                  height: 50,
                  width: 300,
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Search for products"
                    ),
                  ),
                ),
                Icon(
                  Icons.mic
                )
              ],
            ),
          );
  }
}

class Categories extends StatelessWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: 20,
        horizontal: 10
      ),
      child: Text(
        "Categories",
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.black
        ),
      ),
    );
  }
}