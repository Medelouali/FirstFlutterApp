import "package:flutter/material.dart";
import "route1.dart";

class SecondRoute extends StatelessWidget {
  const SecondRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Route'),
        titleTextStyle: TextStyle(
            color: Color.fromARGB(255, 29, 29, 32),
            fontSize: 20,
            fontWeight: FontWeight.bold,
            letterSpacing: 2),
        backgroundColor: Color.fromARGB(184, 247, 242, 242),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navigate back to first route when tapped.
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const FirstRoute()),
            );
          },
          child: const Text('Go back!'),
        ),
      ),
    );
  }
}
