import 'package:flutter/material.dart';
import 'package:krishibandu/models/demo_model.dart';

import '../../../repository/Api/demo_repository.dart';

class ItemWidget extends StatefulWidget {
  const ItemWidget({Key? key}) : super(key: key);

  @override
  State<ItemWidget> createState() => _ItemWidgetState();
}

class _ItemWidgetState extends State<ItemWidget> {
  Future<DemoModel>? futureModel;

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      childAspectRatio: 0.68,
      crossAxisCount: 2,
      shrinkWrap: true,
      children: [
        FutureBuilder<DemoModel?>(
          future: DemoRepo().fetchData(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              if (snapshot.data != null) {
                return Container(
                  padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
                  margin:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 226, 230, 233),
                      borderRadius: BorderRadius.circular(20)),
                  child: Image.network(snapshot.data!.image!),
                );
              } else {
                return const Center(
                  child: Text("No data"),
                );
              }
            } else if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else {
              return const Center(
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
                ),
              );
            }
          },
        )
      ],
    );
  }

  Widget buildTextData(String myText) => Text(
        "$myText",
        textAlign: TextAlign.center,
        style: TextStyle(
            fontSize: 25.00, fontWeight: FontWeight.w500, color: Colors.purple),
      );
}
