import 'package:dice_roller_app/gradient_container.dart';
import 'package:flutter/material.dart';

const Alignment alignmentBegin = Alignment.bottomLeft;
const Alignment alignmentEnd = Alignment.topRight;

const Color colorBegin = Colors.blue;
const Color colorEnd = Colors.red;

const String textGradientContainer = 'dice roller test';
const TextStyle textStyleGradientContainer =
    TextStyle(fontSize: 28, color: Colors.white);

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        // body: GradientContainer(
        //   alignmentBegin: alignmentBegin,
        //   alignmentEnd: alignmentEnd,
        //   colorBegin: colorBegin,
        //   colorEnd: colorEnd,
        //   textGradientContainer: textGradientContainer,
        //   textStyleGradientContainer: textStyleGradientContainer,
        // ),
        body: GradientContainer.defaultContainer(),
      ),
    ),
  );
}
