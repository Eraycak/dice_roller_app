import 'package:dice_roller_app/styled_text.dart';
import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  GradientContainer({
    Key? key,
    required this.alignmentBegin,
    required this.alignmentEnd,
    required this.colorBegin,
    required this.colorEnd,
    required this.textGradientContainer,
    required this.textStyleGradientContainer,
  }) : super(key: key);

  GradientContainer.purple({
    Key? key,
    required this.textGradientContainer,
    required this.textStyleGradientContainer,
    required this.alignmentBegin,
    required this.alignmentEnd,
  })  : colorBegin = Colors.indigo,
        colorEnd = Colors.deepPurple,
        super(key: key);

  GradientContainer.defaultContainer({super.key})
      : colorBegin = Colors.blue,
        colorEnd = Colors.red,
        alignmentBegin = Alignment.bottomLeft,
        alignmentEnd = Alignment.topRight,
        textGradientContainer = 'dice roller test',
        textStyleGradientContainer =
            const TextStyle(fontSize: 28, color: Colors.white);

  final Alignment alignmentBegin;
  final Alignment alignmentEnd;
  final Color colorBegin;
  final Color colorEnd;
  final String textGradientContainer;
  final TextStyle textStyleGradientContainer;

  var activeDiceImage = 'assets/images/dice-1.png';

  void onRollDice() {
    activeDiceImage = 'assets/images/dice-3.png';
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: alignmentBegin,
          end: alignmentEnd,
          colors: [
            colorBegin,
            colorEnd,
          ],
        ),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            StyledText(
              text: textGradientContainer,
              style: textStyleGradientContainer,
            ),
            Image.asset(activeDiceImage, width: 200, height: 200),
            TextButton(
                onPressed: onRollDice,
                style: TextButton.styleFrom(
                    padding: const EdgeInsets.only(top: 20),
                    foregroundColor: Colors.white,
                    textStyle: const TextStyle(fontSize: 28)),
                child: const Text('Roll Dice')),
          ],
        ),
      ),
    );
  }
}
