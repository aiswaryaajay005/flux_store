import 'package:flutter/material.dart';
import 'package:flux_store/global_widgets/reusable_button.dart';
import 'package:flux_store/utils/constants/image_constants.dart';
import 'package:flux_store/view/intro_screen/intro_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            colorFilter: ColorFilter.mode(
              Colors.black.withAlpha(150),
              BlendMode.darken,
            ),
            fit: BoxFit.cover,
            image: AssetImage(ImageConstants.welcomeBg),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              "Welcome to GemStore!",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
            SizedBox(height: 30),
            Text(
              "The home for a fashionista",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            SizedBox(height: 60),
            ReusableButton(
              alpha: 70,

              name: "Get Started",
              onButtonPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => IntroScreen()),
                );
              },
            ),

            SizedBox(height: 100),
          ],
        ),
      ),
    );
  }
}
