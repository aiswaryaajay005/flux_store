import 'package:flutter/material.dart';
import 'package:flux_store/view/intro_screen.dart/intro_screen.dart';

class ReusableButton extends StatelessWidget {
  final String name;
  final void Function() onButtonPressed;
  const ReusableButton({
    super.key,
    required this.name,
    required this.onButtonPressed,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onButtonPressed,

      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 53, vertical: 15),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.white, width: 1.18),
          color: Colors.white.withAlpha(70),
          borderRadius: BorderRadius.circular(29.5),
        ),
        child: Text(
          name,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
