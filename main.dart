import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

List<String> quotes = [
  "Life is like riding a bicycle. To keep your balance, you must keep moving.",
  "Success is not final, failure is not fatal: it is the courage to continue that counts.",
  "Believe you can and you're halfway there.",
  "Don't watch the clock; do what it does. Keep going.",
  "Success is not how high you have climbed, but how you make a positive difference to the world."
];
void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      color: Colors.green,
      title: "Random Text Generating",
      home: RandomText(),
    );
  }
}

class RandomText extends StatefulWidget {
  const RandomText({super.key});

  @override
  State<RandomText> createState() => _RandomTextState();
}

class _RandomTextState extends State<RandomText> {
  int RandomNum = 25;
  @override
  void _generate() {
    setState(() {
      RandomNum = Random().nextInt(10);
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Random Text Generating"),
      ),
      body: Center(
        child: Column(
          children: [
            Text("$RandomNum"),
            ElevatedButton(
              child: Text("Click"),
              onPressed: () {
                _generate();
              },
            ),
          ],
        ),
      ),
    );
  }
}
