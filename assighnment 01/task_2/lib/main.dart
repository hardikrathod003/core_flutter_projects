import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "π List of Fruits",
            style: TextStyle(
              fontSize: 25.0,
            ),
          ),
          backgroundColor: Colors.green,
          centerTitle: true,
        ),
        body: Center(
          child: RichText(
            text: TextSpan(
              text: "πApple",
              style: TextStyle(
                color: Colors.red,
                fontSize: 35,
                wordSpacing: 3,
                letterSpacing: 4,
              ),
              children: [
                TextSpan(
                  text: "\nπ Greps",
                  style: TextStyle(
                    color: Colors.purpleAccent,
                    fontSize: 35,
                    decoration: TextDecoration.none,
                  ),
                ),
                TextSpan(
                  text: "\nπ Cherry",
                  style: TextStyle(
                    color: Colors.purple.shade800,
                    fontSize: 35,
                    decoration: TextDecoration.none,
                  ),
                ),
                TextSpan(
                  text: "\nπ Strawberry",
                  style: TextStyle(
                    color: Colors.pink,
                    fontSize: 35,
                    decoration: TextDecoration.none,
                  ),
                ),
                TextSpan(
                  text: "\nπ₯­ Mango",
                  style: TextStyle(
                    color: Colors.deepOrange,
                    fontSize: 35,
                    decoration: TextDecoration.none,
                  ),
                ),
                TextSpan(
                  text: "\nπ Pineapple",
                  style: TextStyle(
                    color: Colors.green.shade900,
                    fontSize: 35,
                    decoration: TextDecoration.none,
                  ),
                ),
                TextSpan(
                  text: "\nπ Lemon",
                  style: TextStyle(
                    color: Colors.amber,
                    fontSize: 35,
                    decoration: TextDecoration.none,
                  ),
                ),
                TextSpan(
                  text: "\nπ Watermelon",
                  style: TextStyle(
                    color: Colors.green.shade400,
                    fontSize: 35,
                    decoration: TextDecoration.none,
                  ),
                ),
                TextSpan(
                  text: "\nπ₯₯ Coconut",
                  style: TextStyle(
                    color: Colors.brown.shade900,
                    fontSize: 35,
                    decoration: TextDecoration.none,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}
