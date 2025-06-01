import 'dart:math' show Random;
import 'package:flutter/material.dart';

class AnimatedScreen extends StatefulWidget {
  static const name = 'animated_screen';

  const AnimatedScreen({super.key});

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {

  double width = 50;
  double height = 50;
  Color color = Colors.indigo;
  double  borderRadius = 10.0;

  void changeShape() {
    final random = Random();

  //   const colorList = <Color>[
  //     Colors.blue,
  //     Colors.teal,
  //     Colors.green,
  //     Colors.red,
  //     Colors.pink,
  //     Colors.purple,
  //     Colors.deepPurple
  // ];

  // color = colorList[random.nextInt(colorList.length-1)];

    width = random.nextInt(300) + 50;
    height = random.nextInt(300) + 50;
    borderRadius = random.nextInt(25).toDouble();

    color = Color.fromRGBO(
      random.nextInt(255), // red
      random.nextInt(255), // green
      random.nextInt(255), // blue
      1 // opacity
    );


    setState((){});

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Animated container')),

      body: Center(
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 400),
          curve: Curves.easeInCubic,
          width: width < 0 ? 0 : width,
          height: height < 0 ? 0 : height,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(borderRadius < 0 ? 0 : borderRadius)
          ),
        ),
      ),


      floatingActionButton: FloatingActionButton(
        onPressed: changeShape,
        child: const Icon(Icons.play_arrow_outlined),
      ),
    );
  }
}
