// import 'dart:convert';

import 'dart:convert';

import 'package:krishibandu/models/demo_model.dart';

import 'package:http/http.dart' as http;
import 'package:krishibandu/repository/Api/constants.dart';

Future<DemoModel> fetchData() async {
  http.Response response;
  response = await http.get(Uri.parse("${(apiUrl)}/products"));
  if (response.statusCode == 200) {
    return DemoModel.fromJson(jsonDecode(response.body));
  } else {
    throw Exception("Failed to load Demo API");
  }
}
