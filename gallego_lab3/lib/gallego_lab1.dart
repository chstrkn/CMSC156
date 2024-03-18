import 'package:flutter/material.dart';

class GallegoLab1 extends StatelessWidget {
  const GallegoLab1({super.key});

  @override
  Widget build(BuildContext context) {
    const String appTitle = "Lab Activity 1";
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
            leading: IconButton(
              icon: const Icon(Icons.arrow_back, color: Colors.white),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            title: const Text(
              appTitle,
              style: TextStyle(color: Colors.white),
            ),
            centerTitle: true,
            backgroundColor: Colors.deepOrange,
            bottom: const TabBar(
              indicatorColor: Colors.white,
              labelColor: Colors.white,
              unselectedLabelColor: Colors.white,
              tabs: [
                Tab(text: "Checkerboard"),
                Tab(text: "Description"),
              ],
            )),
        body: const TabBarView(
          children: [
            CheckerBoard(),
            Description(),
          ],
        ),
      ),
    );
  }
}

class CheckerBoard extends StatelessWidget {
  const CheckerBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      padding: const EdgeInsets.all(10),
      crossAxisCount: 8,
      children: List.generate(64, (index) {
        int row = index ~/ 8;
        int col = index % 8;
        Color squareColor = (row % 2 == 0 ? col % 2 == 0 : col % 2 == 1)
            ? Colors.black
            : Colors.white;
        if ((row == 0 || row == 1 || row == 2) && squareColor == Colors.black) {
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
    );
  }
}

class Description extends StatelessWidget {
  const Description({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(10.0),
      child: Text(
          "The Checkerboard is an 8x8 grid with alternating black and white squares. The first three rows are filled with orange pieces, while the last three rows are filled with blue pieces.",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
          )),
    );
  }
}
