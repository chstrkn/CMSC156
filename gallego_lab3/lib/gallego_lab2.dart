import 'package:flutter/material.dart';

class GallegoLab2 extends StatelessWidget {
  const GallegoLab2({super.key});

  @override
  Widget build(BuildContext context) {
    const String appTitle = "Lab Activity 2";
    return DefaultTabController(
      length: 2,
      child: Scaffold(
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
            backgroundColor: Colors.orange,
            bottom: const TabBar(
              indicatorColor: Colors.white,
              labelColor: Colors.white,
              unselectedLabelColor: Colors.white,
              tabs: [
                Tab(text: "Manipulating Bars"),
                Tab(text: "Description"),
              ],
            )),
        body: const TabBarView(
          children: [
            SliderContainer(),
            Description(),
          ],
        ),
        backgroundColor: Colors.black,
      ),
    );
  }
}

class SliderContainer extends StatefulWidget {
  const SliderContainer({super.key});

  @override
  State<SliderContainer> createState() => _SliderContainerState();
}

class _SliderContainerState extends State<SliderContainer> {
  double _blueContainerHeight = 300 / 2;
  double _redContainerHeight = 300 / 2;
  double _greenContainerHeight = 300 / 2;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 350,
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
      max: 300,
      activeColor: color,
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
          "The Manipulating Bars contains three bars with corresponding sliders. The sliders are used to manipulate the height of the bars. The first bar is colored blue, the second bar is colored red, and the third bar is colored green.",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
          )),
    );
  }
}
