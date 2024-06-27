import 'package:flutter/material.dart';

class Player {
  String? name = 'nico';

  Player();
}

void main() {
  var nico = Player();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Hello flutter!'),
          ),
          body: const Center(
            child: Text('Hello World!'),
          )),
    );
  }
}
