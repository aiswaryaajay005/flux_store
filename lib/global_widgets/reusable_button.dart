import 'package:flutter/material.dart';
import 'package:flux_store/utils/constants/color_constants.dart';
import 'package:flux_store/view/intro_screen.dart/intro_screen.dart';

class ReusableButton extends StatelessWidget {
  final String name;
  final void Function() onButtonPressed;
  final Color borderColor;
  final Color textColor;
  final Color backgroundColor;
  final int alpha;
  const ReusableButton({
    super.key,
    required this.name,
    required this.onButtonPressed,
    this.backgroundColor = ColorConstants.white,
    this.borderColor = ColorConstants.white,
    this.textColor = ColorConstants.white,
    this.alpha = 255,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onButtonPressed,

      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 53, vertical: 15),
        decoration: BoxDecoration(
          border: Border.all(color: borderColor, width: 1.18),
          color: backgroundColor.withAlpha(alpha),
          borderRadius: BorderRadius.circular(29.5),
        ),
        child: Text(
          name,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
            color: textColor,
          ),
        ),
      ),
    );
  }
}
