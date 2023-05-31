import 'package:flutter/material.dart';

class PurpoleElevateButton extends StatelessWidget {
  String txt;
  Function() onPressed;
  Color backgroundColor;
  Color foregroundColor;
  PurpoleElevateButton({
    Key? key,
    required this.onPressed,
    required this.txt,
    this.backgroundColor = const Color(0xFFC076FB),
    this.foregroundColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        foregroundColor: foregroundColor,
      ),
      child: Text(
        txt,
      ),
    );
  }
}
