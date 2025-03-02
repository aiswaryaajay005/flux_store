import 'package:flutter/material.dart';
import 'package:flux_store/utils/constants/color_constants.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final double bottomPadding;
  final TextEditingController? controller;
  const CustomTextField({
    super.key,
    required this.hintText,
    this.bottomPadding = 20,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: bottomPadding),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w300,
            color: Colors.black,
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: ColorConstants.lightgrey1),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: ColorConstants.black),
          ),
        ),
        onTapOutside: (event) {
          FocusScope.of(context).unfocus();
        },
      ),
    );
  }
}
