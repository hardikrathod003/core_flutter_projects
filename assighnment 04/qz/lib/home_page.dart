import 'package:flutter/material.dart';
import 'list.dart';
import 'last_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextStyle style = const TextStyle(fontSize: 25, color: Color(0xffa8a8a9));
  Color color = const Color(0xff1e1f23);
  int question_answer = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        children: question
            .map(
              (e) => displayQuestion(),
        )
            .toList(),
      ),
    );
  }
  Widget displayQuestion() {
    return (question_answer == 10)
        ? const LastPage()
        : Column(
      children: [
        Expanded(
          flex: 1,
          child: IndexedStack(
            index: question_answer,
            children: question.map((e) => e.column).toList(),
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            color: Colors.black,
            child: IndexedStack(
              index: question_answer,
              children: question.map((e) => displayAnswer(e)).toList(),
            ),
          ),
        ),
      ],
    );
  }
  Widget displayAnswer(a) {
    return (question_answer == 10)
        ? const LastPage()
        : Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InkWell(
              child: Container(
                alignment: Alignment.center,
                height: 70,
                width: 350,
                decoration: BoxDecoration(
                    color: color, borderRadius: BorderRadius.circular(5)),
                child: IndexedStack(
                  alignment: Alignment.center,
                  index: question_answer,
                  children: question
                      .map(
                        (e) => Text("A. ${e.a}", style: style),
                  )
                      .toList(),
                ),
              ),
              onTap: () {
                setState(() {
                  if (question_answer == 2) {
                    Navigator.of(context)
                        .pushNamed("next_page", arguments: a);
                    question_answer++;
                  } else {
                    Navigator.of(context).pushNamed("wrong");
                  }
                });
              },
            ),
          ],
        ),
        const SizedBox(
          height: 14,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InkWell(
              child: Container(
                alignment: Alignment.center,
                height: 70,
                width: 350,
                decoration: BoxDecoration(
                    color: color, borderRadius: BorderRadius.circular(5)),
                child: IndexedStack(
                  alignment: Alignment.center,
                  index: question_answer,
                  children: question
                      .map(
                        (e) => Text("B. ${e.b}", style: style),
                  )
                      .toList(),
                ),
              ),
              onTap: () {
                setState(() {
                  if (question_answer == 5 || question_answer == 7 || question_answer == 8) {
                    Navigator.of(context)
                        .pushNamed("next_page", arguments: a);
                    question_answer++;
                  } else {
                    Navigator.of(context).pushNamed("wrong");
                  }
                });
              },
            ),
          ],
        ),
        const SizedBox(
          height: 14,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InkWell(
              child: Container(
                alignment: Alignment.center,
                height: 70,
                width: 350,
                decoration: BoxDecoration(
                    color: color, borderRadius: BorderRadius.circular(5)),
                child: IndexedStack(
                  alignment: Alignment.center,
                  index: question_answer,
                  children: question
                      .map(
                        (e) => Text("C. ${e.c}", style: style),
                  )
                      .toList(),
                ),
              ),
              onTap: () {
                setState(() {
                  if (question_answer == 4 || question_answer == 6 || question_answer == 9) {
                    Navigator.of(context)
                        .pushNamed("next_page", arguments: a);
                    question_answer++;
                  } else {
                    Navigator.of(context).pushNamed("wrong");
                  }
                });
              },
            ),
          ],
        ),
        const SizedBox(
          height: 14,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InkWell(
              child: Container(
                alignment: Alignment.center,
                height: 70,
                width: 350,
                decoration: BoxDecoration(
                    color: color, borderRadius: BorderRadius.circular(5)),
                child: IndexedStack(
                  alignment: Alignment.center,
                  index: question_answer,
                  children: question
                      .map(
                        (e) => Text("D. ${e.d}", style: style),
                  )
                      .toList(),
                ),
              ),
              onTap: () {
                setState(() {
                  if (question_answer == 0 || question_answer == 1 || question_answer == 3) {
                    Navigator.of(context)
                        .pushNamed("next_page", arguments: a);
                    question_answer++;
                  } else {
                    Navigator.of(context).pushNamed("wrong");
                  }
                });
              },
            ),
          ],
        ),
      ],
    );
  }
}