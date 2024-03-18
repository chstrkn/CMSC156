import 'package:flutter/material.dart';
import 'package:gallego_lab3/gallego_lab1.dart';
import 'package:gallego_lab3/gallego_lab2.dart';
import 'package:gallego_lab3/gallego_lab3.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {
        "/": (context) => const GallegoLab3(),
        "/gallego_lab1": (context) => const GallegoLab1(),
        "/gallego_lab2": (context) => const GallegoLab2(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
