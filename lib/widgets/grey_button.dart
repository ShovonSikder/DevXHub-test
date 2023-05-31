import 'package:flutter/material.dart';

import '../utils/app_syles.dart';

class GreyButton extends StatelessWidget {
  String text;
  Function() onPressed;
  GreyButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppStyles.normalButtonHeight,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: AppStyles.buttonBackgroundGrey,
          foregroundColor: AppStyles.buttonTextGrey,
        ),
        child: Text(
          text,
          style: TextStyle(
            fontSize: AppStyles.mediumX16FontSize,
          ),
        ),
      ),
    );
  }
}
