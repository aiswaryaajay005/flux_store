import 'package:flutter/material.dart';
import 'package:flux_store/global_widgets/custom_text_field.dart';
import 'package:flux_store/global_widgets/logo_avatar.dart';
import 'package:flux_store/global_widgets/reusable_button.dart';
import 'package:flux_store/utils/constants/color_constants.dart';
import 'package:flux_store/utils/constants/image_constants.dart';
import 'package:flux_store/view/bottom_navbar_screen/bottom_navbar_screen.dart';
import 'package:flux_store/view/signup_screen/signup_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 58),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Log into \nyour account",
                  style: TextStyle(fontSize: 24, height: 2),
                ),
              ),
              SizedBox(height: 19),

              CustomTextField(
                hintText: "Email Address",
                controller: passwordController,
              ),

              CustomTextField(
                hintText: "Password",
                controller: passwordController,
                bottomPadding: 28,
              ),

              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Forget Password?",
                    style: TextStyle(fontSize: 12, color: ColorConstants.black),
                  ),
                ),
              ),
              SizedBox(height: 36),
              ReusableButton(
                name: "Log in",
                onButtonPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BottomNavbarScreen(),
                    ),
                  );
                },
                backgroundColor: ColorConstants.buttonbrown,
              ),
              SizedBox(height: 28),
              Text(
                "or log in with",
                style: TextStyle(fontSize: 12, color: ColorConstants.black),
              ),
              SizedBox(height: 28),
              Row(
                spacing: 20,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  LogoAvatar(image: ImageConstants.apple),
                  LogoAvatar(image: ImageConstants.google),
                  LogoAvatar(image: ImageConstants.facebook),
                ],
              ),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account?",
                    style: TextStyle(fontSize: 14),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => SignupScreen()),
                      );
                    },
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                        fontSize: 14,
                        decoration: TextDecoration.underline,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 63),
            ],
          ),
        ),
      ),
    );
  }
}
