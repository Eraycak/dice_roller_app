import 'package:dice_roller_app/styled_text.dart';
import 'package:flutter/material.dart';

const Alignment alignmentBegin = Alignment.topLeft;
const Alignment alignmentEnd = Alignment.bottomRight;

const Color colorBegin = Colors.blue;
const Color colorEnd = Colors.red;

const String textDiceRoller = 'dice roller';
const TextStyle textStyleDiceRoller =
    TextStyle(fontSize: 28, color: Colors.white);

class GradientContainer extends StatelessWidget {
  const GradientContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: alignmentBegin,
          end: alignmentEnd,
          colors: [
            colorBegin,
            colorEnd,
          ],
        ),
      ),
      child: const Center(
        child: StyledText(
          text: textDiceRoller,
          //?style: textStyleDiceRoller,
        ),
      ),
    );
  }
}
