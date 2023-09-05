import 'package:dice_roller_app/gradient_container.dart';
import 'package:flutter/material.dart';

const Alignment alignmentBegin = Alignment.bottomLeft;
const Alignment alignmentEnd = Alignment.topRight;

const Color colorBegin = Colors.blue;
const Color colorEnd = Colors.red;

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          alignmentBegin: alignmentBegin,
          alignmentEnd: alignmentEnd,
          colorBegin: colorBegin,
          colorEnd: colorEnd,
        ),
        // body: GradientContainer.defaultContainer(),
      ),
    ),
  );
}
