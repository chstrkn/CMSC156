import 'package:flutter/material.dart';

class GallegoLab3 extends StatelessWidget {
  const GallegoLab3({super.key});

  @override
  Widget build(BuildContext context) {
    const String appTitle = 'Lab Activity 3';
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            appTitle,
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: Colors.purple,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.purple,
                      foregroundColor: Colors.white),
                  onPressed: () {
                    Navigator.pushNamed(context, "/gallego_lab1");
                  },
                  child: const Text("Go to Lab Activity 1 - Checkerboard"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.purple,
                      foregroundColor: Colors.white),
                  onPressed: () {
                    Navigator.pushNamed(context, "/gallego_lab2");
                  },
                  child: const Text("Go to Lab Activity 2 - Manipulating Bars"),
                ),
              ),
            ],
          ),
        ),
        // backgroundColor: Colors.black,
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
