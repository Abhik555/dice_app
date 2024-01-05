import 'package:dice_app/widgets/dice_roll.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromARGB(255, 18, 5, 113),
              Color.fromARGB(255, 19, 37, 144),
              Color.fromARGB(255, 7, 34, 188),
              Color.fromARGB(255, 20, 52, 235),
            ], begin: Alignment.topLeft, end: Alignment.bottomRight),
          ),
          child: const DiceRoll()
        ),
      ),
    );
  }
}
