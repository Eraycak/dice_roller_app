import 'package:dice_roller_app/styled_text.dart';
import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Colors.blue,
            Colors.red,
          ],
        ),
      ),
      child: const Center(
        child: StyledText(
          text: 'Dice Roller',
          style: TextStyle(fontSize: 28, color: Colors.white),
        ),
      ),
    );
  }
}
