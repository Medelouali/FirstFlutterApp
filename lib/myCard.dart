import "package:flutter/material.dart";

class MyCard extends StatelessWidget {
  final String question;
  final Function cb;
  const MyCard(this.question, this.cb, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      // color: Colors.white,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 42, 40, 70),
        boxShadow: [],
      ),
      child: Row(
        children: [
          Expanded(
            flex: 9,
            child: TextButton(
              onPressed: () => cb(),
              child: Text(
                question,
                style: TextStyle(color: Color.fromARGB(255, 227, 233, 238)),
              ),
            ),
          ),
          Icon(
            Icons.favorite,
            color: Colors.pink,
            size: 24.0,
            semanticLabel: 'Text to announce in accessibility modes',
          ),
          Icon(
            Icons.audiotrack,
            color: Colors.green,
            size: 30.0,
          ),
          Icon(
            Icons.beach_access,
            color: Colors.blue,
            size: 36.0,
          ),
        ],
      ),
    );
  }
}
