import 'package:flutter/material.dart';
import 'package:krishibandu/constants.dart';
import 'package:krishibandu/repository/Api/demo_repository.dart';

import '../../../components/default_buttons.dart';
import '../../../models/demo_model.dart';
import 'onboardingcontent.dart';



class Body extends StatefulWidget {
  
  @override
  State<Body> createState() => _BodyState();
}
class _BodyState extends State<Body> {
  int currentPage = 0;
   List<Map<String, String>> onboardingData = [
    {
      "text": "Skip",
      "image": "assets/images/doctor.jpg"
    },
    {
      "text":
          "We help people conect with store \naround United State of America",
      "image": "assets/images/doctor.jpg"
    },
    {
      "text": "We show the easy way to shop. \nJust stay at home with us",
      "image": "assets/images/doctor.jpg"
    },
  ];
  Future<DemoModel>? futureModel;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
      children: [
        Expanded(
          flex: 3,
          child: PageView.builder(
            onPageChanged: (value){
              setState(() {
                currentPage = value;
              });
            },
            itemCount: onboardingData.length,itemBuilder: (context, index) => OnboardingContent(
            image: "assets/images/doctor.jpg",
            text: "Skip",
          )
          ), 
          ),
        Expanded(
          flex: 2,
          child:Column(
            children: [
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  buildDot(),
                  buildDot(),
                  buildDot()
                ],
              ),
              SizedBox( height: 50,),
              DefaultButton(
                text: "Next",
                press: (){
                  setState(() {
                    futureModel = fetchData();
                  });
                },
              ),
              buildFutureTextData()
            ],
          ),
        )
      ],
    ),
      )
    );
  }

  buildFutureTextData()=> FutureBuilder<DemoModel>(
    future: futureModel,
    builder: (context,snapshot){
      if(snapshot.hasData)
      {
        return buildTextData(snapshot.data!.name!);
      }
      else if(snapshot.hasError){
        return buildTextData("Error");
      }
      return CircularProgressIndicator();
    },
  );
  Widget buildTextData(String myText) => Text(
        "$myText",
        textAlign: TextAlign.center,
        style: TextStyle(
            fontSize: 25.00, fontWeight: FontWeight.w500, color: Colors.purple),
      );

  Container buildDot() {
    return Container(
              margin: EdgeInsets.only(right: 5),
              height: 6,
              width: 6,
              decoration: BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.circular(3)
              ),
            );
  }
}

