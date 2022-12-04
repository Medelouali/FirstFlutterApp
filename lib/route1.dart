import "package:flutter/material.dart";
import "route2.dart";

class FirstRoute extends StatelessWidget {
  const FirstRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Route'),
        titleTextStyle: TextStyle(
            color: Color.fromARGB(255, 29, 29, 32),
            fontSize: 20,
            fontWeight: FontWeight.bold,
            letterSpacing: 2),
        backgroundColor: Color.fromARGB(184, 247, 242, 242),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Open route'),
          onPressed: () {
            // Navigate to second route when tapped.
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SecondRoute()),
            );
          },
        ),
      ),
    );
  }
}
