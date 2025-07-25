import 'package:flutter/material.dart';
import 'package:flux_store/global_widgets/custom_text_field.dart';
import 'package:flux_store/global_widgets/logo_avatar.dart';
import 'package:flux_store/global_widgets/reusable_button.dart';
import 'package:flux_store/utils/constants/color_constants.dart';
import 'package:flux_store/utils/constants/image_constants.dart';
import 'package:flux_store/view/login_screen/login_screen.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPassswordController = TextEditingController();
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
                  "Create \nyour account",
                  style: TextStyle(fontSize: 24, height: 2),
                ),
              ),
              SizedBox(height: 19),
              CustomTextField(
                hintText: "Enter your Name",
                controller: nameController,
              ),

              CustomTextField(
                hintText: "Email Address",
                controller: emailController,
              ),

              CustomTextField(
                hintText: "Password",
                controller: passwordController,
              ),

              CustomTextField(
                hintText: "Confirm Password",
                bottomPadding: 40,
                controller: confirmPassswordController,
              ),
              ReusableButton(
                name: "Sign Up",
                onButtonPressed: () {},
                backgroundColor: ColorConstants.buttonbrown,
              ),
              SizedBox(height: 28),
              Text(
                "or sign up with",
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
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account?",
                    style: TextStyle(fontSize: 14),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => LoginScreen()),
                      );
                    },
                    child: Text(
                      "Log in",
                      style: TextStyle(
                        fontSize: 14,
                        decoration: TextDecoration.underline,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
