import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  const StyledText({
    Key? key,
    required this.text,
    this.style,
  }) : super(key: key);

  final String text;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return Text(
      text.toUpperCase(),
      style: style ?? Theme.of(context).primaryTextTheme.displayLarge,
    );
  }
}
