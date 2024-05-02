import 'package:flutter/material.dart';
import 'package:lifeapp/input_screen.dart';

void main() {
  runApp(const lifeApp());
}

// ignore: camel_case_types
class lifeApp extends StatelessWidget {
  const lifeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Colors.blue,
        scaffoldBackgroundColor: Colors.black,
        brightness: Brightness.dark,
      ),
      home: const InputScreen(),
    );
  }
}
