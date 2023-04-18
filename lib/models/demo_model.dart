import 'package:flutter/material.dart';
class DemoModel{
  String? id;
  String? name;
  String? image;
  DemoModel({this.id,this.name,this.image});

  factory DemoModel.fromJson(Map<String, dynamic> json)
  {
    return DemoModel(
      id: json['id'],
      name: json['name'],
      image: json['image']
    );
}
}