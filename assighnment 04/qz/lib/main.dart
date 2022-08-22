import 'package:flutter/material.dart';
import 'next_page.dart';
import 'last_page.dart';
import 'wrong.dart';
import 'home_page.dart';
void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => const HomePage(),
        "next_page": (context) => const NextPage(),
        "wrong": (context) => const WrongOptionPage(),
        "last_page": (context) => const LastPage(),
      },
    ),
  );
}