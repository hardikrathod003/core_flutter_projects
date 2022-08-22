import 'package:flutter/material.dart';
import 'list.dart';
class NextPage extends StatefulWidget {
  const NextPage({Key? key}) : super(key: key);
  @override
  _NextPageState createState() => _NextPageState();
}
class _NextPageState extends State<NextPage> {
  TextStyle style = const TextStyle(
    fontSize: 22,
    color: Colors.white,
  );
  @override
  Widget build(BuildContext context) {
    dynamic args = ModalRoute.of(context)!.settings.arguments;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/fire-cracker.png", width: 100),
            const SizedBox(height: 20),
            const Text(
              "Your Answer is Correct",
              style: TextStyle(fontSize: 24, color: Colors.redAccent),
            ),
            const SizedBox(height: 40),
            Text(
              "You Won \n ₹ ${args.money}",
              style: const TextStyle(fontSize: 24, color: Color(0xffc78640)),
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  Navigator.of(context).pop();
                });
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.white10,
                onPrimary: const Color(0xffd6d6d6),
                padding:
                const EdgeInsets.symmetric(horizontal: 70, vertical: 10),
              ),
              child: const Text(
                "Next",
                style: TextStyle(fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}