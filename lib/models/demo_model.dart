import 'package:flutter/material.dart';
class DemoModel{
  String? id;
  String? name;
  DemoModel({this.id,this.name});

  factory DemoModel.fromJson(Map<String, dynamic> json)
  {
    return DemoModel(
      id: json['id'],
      name: json['name']
    );
}
}