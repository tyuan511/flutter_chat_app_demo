import 'package:flutter/material.dart';

import '../constants.dart';

class FillOutlineButton extends StatelessWidget {
  const FillOutlineButton({
    super.key,
    this.isFilled = true,
    required this.press,
    required this.text,
  });

  final bool isFilled;
  final VoidCallback press;
  final String text;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
        side: const BorderSide(color: Colors.white),
      ),
      color: isFilled ? Colors.white : Colors.transparent,
      elevation: isFilled ? 4 : 0,
      onPressed: press,
      child: Text(
        text,
        style: TextStyle(
          color: isFilled ? kContentColorLightTheme : Colors.white,
          fontSize: 12,
        ),
      ),
    );
  }
}
