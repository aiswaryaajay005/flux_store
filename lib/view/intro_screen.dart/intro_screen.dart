import 'package:flutter/material.dart';
import 'package:flux_store/global_widgets/reusable_button.dart';
import 'package:flux_store/utils/constants/color_constants.dart';
import 'package:flux_store/utils/constants/image_constants.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 55),
              Text(
                "Discover something new",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              SizedBox(height: 17),
              Text(
                "Special new arrivals just for you",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
              ),
              SizedBox(height: 30),
              Expanded(
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        width: double.infinity,
                        height: 375,
                        color: ColorConstants.darkgrey,
                      ),
                    ),
                    _buildCarouselSection(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCarouselSection() {
    return Column(
      children: [
        SizedBox(
          height: 368,
          width: 261,
          child: PageView.builder(
            itemCount: 3,
            itemBuilder:
                (context, index) => Container(
                  alignment: Alignment.bottomCenter,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: ColorConstants.lightgrey,
                  ),
                  child: Image.asset(height: 349, ImageConstants.intro1),
                ),
          ),
        ),
        SizedBox(height: 57),
        Row(
          spacing: 8,
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            3,
            (index) => Container(
              height: 10,
              width: 10,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(5),
              ),
            ),
          ),
        ),
        SizedBox(height: 27),
        ReusableButton(name: "Shop Now", onButtonPressed: () {}),
      ],
    );
  }
}
