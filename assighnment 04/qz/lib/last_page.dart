import 'package:flutter/material.dart';
class LastPage extends StatefulWidget {
  const LastPage({Key? key}) : super(key: key);
  @override
  _LastPageState createState() => _LastPageState();
}
class _LastPageState extends State<LastPage> {
  TextStyle style = const TextStyle(
    fontSize: 22,
    color: Colors.white,
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
            Image.asset("assets/images/fire-cracker.png", width: 100),
            const SizedBox(height: 10),
            const Text(
              "Congratulations",
              style: TextStyle(fontSize: 24, color: Color(0xff5b5f62)),
            ),
            const SizedBox(height: 40),
            const Text(
              "Game Over",
              style: TextStyle(fontSize: 24, color: Colors.white),
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
                "Restart",
                style: TextStyle(fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}