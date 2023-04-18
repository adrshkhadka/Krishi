import 'package:flutter/material.dart';
import 'package:krishibandu/constants.dart';
import 'package:krishibandu/screens/home/home_page.dart';

import '../../../components/default_buttons.dart';
import '../../../models/demo_model.dart';
import '../../../repository/Api/demo_repository.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);
  
  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  Future<DemoModel>? futureModel;
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
                press: (){
                  // setState(() {
                  //   futureModel = DemoRepo().fetchData();
                  // });
                  Navigator.pushNamed(context, HomePage.routeName);
                },
                
              ),
              // buildFutureTextData()
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

// buildFutureTextData()=> FutureBuilder<DemoModel>(
//     future: futureModel,
//     builder: (context,snapshot){
//       if(snapshot.hasData)
//       {
//         return buildTextData(snapshot.data!.image!);
//       }
//       else if(snapshot.hasError){
//         return buildTextData("Error");
//       }
//       return CircularProgressIndicator();
//     },
//   );
//   Widget buildTextData(String myText) => Text(
//         "$myText",
//         textAlign: TextAlign.center,
//         style: TextStyle(
//             fontSize: 25.00, fontWeight: FontWeight.w500, color: Colors.purple),
//       );

//   Container buildDot() {
//     return Container(
//               margin: EdgeInsets.only(right: 5),
//               height: 6,
//               width: 6,
//               decoration: BoxDecoration(
//                 color: kPrimaryColor,
//                 borderRadius: BorderRadius.circular(3)
//               ),
//             );
//   }
