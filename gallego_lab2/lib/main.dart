import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    const String appTitle = 'Lab Activity 2';
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            appTitle,
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: Colors.orange,
        ),
        body: const SliderContainer(),
        backgroundColor: Colors.black,
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class SliderContainer extends StatefulWidget {
  const SliderContainer({super.key});

  @override
  State<SliderContainer> createState() => _SliderContainerState();
}

class _SliderContainerState extends State<SliderContainer> {
  double _blueContainerHeight = 350 / 2;
  double _redContainerHeight = 350 / 2;
  double _greenContainerHeight = 350 / 2;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 400,
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _colorContainer(Colors.blue, _blueContainerHeight),
                _colorContainer(Colors.red, _redContainerHeight),
                _colorContainer(Colors.green, _greenContainerHeight),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(50.0),
          child: Column(
            children: [
              const Text('1st Bar', style: TextStyle(color: Colors.white)),
              _colorSlider(Colors.blue, _blueContainerHeight),
              const Text('2nd Bar', style: TextStyle(color: Colors.white)),
              _colorSlider(Colors.red, _redContainerHeight),
              const Text('3rd Bar', style: TextStyle(color: Colors.white)),
              _colorSlider(Colors.green, _greenContainerHeight),
            ],
          ),
        ),
      ],
    );
  }

  Widget _colorContainer(Color color, double height) {
    return Column(
      children: [
        Expanded(
          child: Container(),
        ),
        Container(
          color: color,
          width: 100,
          height: height,
        ),
      ],
    );
  }

  Widget _colorSlider(Color color, double value) {
    return Slider(
      value: value,
      onChanged: (double value) {
        setState(() {
          if (color == Colors.blue) {
            _blueContainerHeight = value;
          } else if (color == Colors.red) {
            _redContainerHeight = value;
          } else {
            _greenContainerHeight = value;
          }
        });
      },
      min: 0,
      max: 350,
      activeColor: color,
    );
  }
}
