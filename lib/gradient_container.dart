import 'package:dice_roller_app/change_gradient_container_color.dart';
import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer({
    Key? key,
    required this.alignmentBegin,
    required this.alignmentEnd,
    required this.colorBegin,
    required this.colorEnd,
  }) : super(key: key);

  const GradientContainer.purple({
    Key? key,
    required this.alignmentBegin,
    required this.alignmentEnd,
  })  : colorBegin = Colors.indigo,
        colorEnd = Colors.deepPurple,
        super(key: key);

  const GradientContainer.defaultContainer({super.key})
      : colorBegin = Colors.blue,
        colorEnd = Colors.red,
        alignmentBegin = Alignment.bottomLeft,
        alignmentEnd = Alignment.topRight;

  final Alignment alignmentBegin;
  final Alignment alignmentEnd;
  final Color colorBegin;
  final Color colorEnd;

  @override
  Widget build(BuildContext context) {
    return const ChangeColorOfContainer();
  }
}
