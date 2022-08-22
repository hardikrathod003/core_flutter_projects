import 'package:flutter/material.dart';
class WrongOptionPage extends StatefulWidget {
  const WrongOptionPage({Key? key}) : super(key: key);
  @override
  _WrongOptionPageState createState() => _WrongOptionPageState();
}
class _WrongOptionPageState extends State<WrongOptionPage> {
  TextStyle style = const TextStyle(
    fontSize: 22,
    color: Color(0xffd4d4ff),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/lose.png", width: 100),
            const SizedBox(height: 20),
            Text(
              "oops!",
              style: style,
            ),
            const SizedBox(height: 40),
            Text(
              "Sorry you are \n\t\t\t the lose",
              style: style,
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed("/");
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.white10,
                onPrimary: Colors.white,
                padding:
                const EdgeInsets.symmetric(horizontal: 70, vertical: 10),
              ),
              child: const Text(
                "Try Again",
                style: TextStyle(fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}