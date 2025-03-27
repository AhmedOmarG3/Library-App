import 'package:flutter/material.dart';
import 'package:library_app/presentation/views/create_account_view.dart';
import 'package:library_app/presentation/views/forget_password_view.dart';
import 'package:library_app/widgets/custom_button.dart';
import 'package:library_app/widgets/custom_header.dart';
import 'package:library_app/widgets/custom_text_field.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});
static const routeName = '/LoginView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          backgroundColor: Colors.white,
          appBar: const CustomHeader(),
          body: Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 50),
        const Text(
          "Welcome Back!",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10),
        const Text(
          "Explore Unique Handmade Creations",
          style: TextStyle(fontSize: 16, color: Colors.grey),
        ),
        const SizedBox(height: 30),
        const CustomTextField(label: 'Email', hintText: "Enter your email"),
        const SizedBox(height: 15),
        const CustomTextField(label: 'Password', hintText: "Enter your Password", isPassword: true,),
        const SizedBox(height: 10),
        Align(
          alignment: Alignment.centerRight,
          child: TextButton(
            onPressed: () {
              Navigator.pushNamed(context, CreateAccountView.routeName);
            },
            child: const Text(
              "Forget Password?",
              style: TextStyle(fontSize: 14, color: Colors.blue),
            ),
          ),
        ),
        const SizedBox(height: 20),
        CustomButton(
          text: "Login",
          onPressed: () {
            // Login action
          },
        ),
        const SizedBox(height: 15),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Not a member yet?",
              style: TextStyle(fontSize: 14, color: Colors.grey),
            ),
            TextButton(
              onPressed: () {
                 Navigator.push(context, MaterialPageRoute(builder: (context) => CreateAccountView()));
              },
              child: const Text(
                "Sign up",
                style: TextStyle(fontSize: 14, color: Colors.blue),
              ),
            ),
          ],
        ),
      ],
    ),
          ),
        );
  }
}
