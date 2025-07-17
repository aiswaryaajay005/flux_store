import 'package:flutter/material.dart';
import 'package:flux_store/utils/constants/color_constants.dart';

class LogoAvatar extends StatelessWidget {
  final String image;
  const LogoAvatar({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: ColorConstants.bordergrey),
        borderRadius: BorderRadius.circular(20),
      ),
      child: CircleAvatar(
        backgroundColor: ColorConstants.white,
        radius: 21,
        child: Image.asset(image, height: 25, width: 25),
      ),
    );
  }
}
