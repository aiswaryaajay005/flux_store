import 'package:flutter/material.dart';
import 'package:flux_store/global_widgets/custom_text_field.dart';
import 'package:flux_store/global_widgets/reusable_button.dart';
import 'package:flux_store/utils/constants/color_constants.dart';

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
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 58),
              Text(
                "Create \nyour account",
                style: TextStyle(fontSize: 24, height: 2),
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
            ],
          ),
        ),
      ),
    );
  }
}
