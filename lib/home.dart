import "package:flutter/material.dart";
import "./myCard.dart";
import "route1.dart";

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomeState();
  }
}

class HomeState extends State<Home> {
  String currentQuestion = "";
  var questions = [
    "How Old Are You Son?",
    "How Old Are You Bb?",
    "How Old Are You Darling?",
    "How Old Are You Honey?",
    "How Old Are You Son?",
    "How Old Are You Bb?",
    "How Old Are You Darling?",
    "How Old Are You Honey?",
    "How Old Are You Son?",
    "How Old Are You Bb?",
    "How Old Are You Darling?",
    "How Old Are You Honey?",
    "How Old Are You Son?",
    "How Old Are You Bb?",
    "How Old Are You Darling?",
    "How Old Are You Honey?",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
        titleTextStyle: TextStyle(
            color: Color.fromARGB(255, 29, 29, 32),
            fontSize: 20,
            fontWeight: FontWeight.bold,
            letterSpacing: 2),
        backgroundColor: Color.fromARGB(184, 247, 242, 242),
      ),
      body: ListView(scrollDirection: Axis.vertical, children: [
        ...questions
            .map((q) => MyCard(q, () {
                  setState(() {
                    currentQuestion = q;
                  });
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const FirstRoute()),
                  );
                }))
            .toList(),
        Text(currentQuestion)
      ]),
    );
  }
}
