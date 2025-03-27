import 'package:flutter/material.dart';
import 'package:library_app/presentation/views/login_view.dart';
import 'package:library_app/widgets/custom_button.dart';
import 'package:library_app/widgets/custom_button_with_icon.dart';
import 'package:library_app/widgets/custom_header.dart';
import 'package:library_app/widgets/custom_text_field.dart';

class CreateAccountView extends StatelessWidget {
  const CreateAccountView({super.key});
static const routeName = '/CreateAccountView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomHeader(),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Create an Account",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                "Enter your details below ",
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
              const SizedBox(height: 30),
              const CustomTextField(hintText: "User Name"),
              const SizedBox(height: 5),
              const CustomTextField(hintText: "Email"),
              const SizedBox(height: 5),
              const CustomTextField(hintText: "Password", isPassword: true),
              const SizedBox(height: 5),
              const CustomTextField(
                  hintText: "Confirm Password", isPassword: true),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: CustomButton(
                  text: 'Create Account',
                  onPressed: () {},
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: CustomButtonWithIcon(
                  text: 'with Google',
                  onPressed: () {},
                  color: Colors.white,
                  textColor: Colors.black,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Did you have an account? ",
                    style: TextStyle(fontSize: 17, color: Colors.grey),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, LoginView.routeName);
                    },
                    child: const Text(
                      "Login",
                      style: TextStyle(fontSize: 17, color: Colors.blue),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      )),
    );
  }
}
