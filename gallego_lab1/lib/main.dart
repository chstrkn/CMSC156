import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: const Text('Checkerboard'),
          backgroundColor: Colors.deepOrange,
        ),
        body: GridView.count(
          padding: const EdgeInsets.all(10),
          crossAxisCount: 8,
          children: List.generate(64, (index) {
            int row = index ~/ 8;
            int col = index % 8;
            Color squareColor = (row % 2 == 0 ? col % 2 == 0 : col % 2 == 1)
                ? Colors.black
                : Colors.white;
            if ((row == 0 || row == 1 || row == 2) &&
                squareColor == Colors.black) {
              return Container(
                color: squareColor,
                child: Center(
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: const BoxDecoration(
                        color: Colors.deepOrange, shape: BoxShape.circle),
                  ),
                ),
              );
            } else if ((row == 5 || row == 6 || row == 7) &&
                squareColor == Colors.black) {
              return Container(
                color: squareColor,
                child: Center(
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: const BoxDecoration(
                        color: Colors.blue, shape: BoxShape.circle),
                  ),
                ),
              );
            } else {
              return Container(
                color: squareColor,
              );
            }
          }),
        ),
      ),
    );
  }
}
