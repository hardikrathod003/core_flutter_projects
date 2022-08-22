import 'package:flutter/material.dart';
class Question {
  Widget column;
  String? a;
  String? b;
  String? c;
  String? d;
  int? money;
  int? id;
  Question({
    required this.column,
    this.a,
    this.d,
    this.b,
    this.c,
    this.money,
    this.id,
  });
}
