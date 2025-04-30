import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:library_app/helpers/show_snak_bar.dart';
import 'package:library_app/widgets/custom_header.dart';
import 'package:library_app/widgets/custom_button.dart';
import 'package:library_app/widgets/custom_text_field.dart';

class ForgetPasswordView extends StatefulWidget {
  const ForgetPasswordView({super.key});
  static const routeName = 'ForgetPasswordView';

  @override
  State<ForgetPasswordView> createState() => _ForgetPasswordViewState();
}

class _ForgetPasswordViewState extends State<ForgetPasswordView> {
  final TextEditingController emailController = TextEditingController();
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<void> resetPassword() async {
    final email = emailController.text.trim();

    if (email.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Please enter your email")),
      );
      return;
    }

    try {
      await _auth.sendPasswordResetEmail(email: email);
      showSnakBar(context, "Reset link sent! Check your email.");
      Navigator.pop(context);
    } on FirebaseAuthException catch (e) {
      String message = "Something went wrong";
      if (e.code == 'user-not-found') {
        message = "No user found with this email";
      }
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(message)),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
String email=    ModalRoute.of(context)!.settings.arguments as String;
    
    
if (email.isNotEmpty) {
      emailController.text = email;
    }
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
              "Forgot Password",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              "Enter your email address to reset your\npassword",
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            const SizedBox(height: 30),
            CustomTextField(
              label: 'Email',
              hintText: "Enter your email",
              controller: emailController,
            ),
            const SizedBox(height: 10),
            const Text(
              "We'll send you a reset link",
              style: TextStyle(fontSize: 14, color: Colors.grey),
            ),
            const SizedBox(height: 70),
            SizedBox(
              width: double.infinity,
              child: CustomButton(
                text: 'Reset Password',
                onPressed: resetPassword,
              ),
            ),
            const SizedBox(height: 15),
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                style: OutlinedButton.styleFrom(
                  side: const BorderSide(color: Colors.blue, width: 2),
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: const Text(
                  "Cancel",
                  style: TextStyle(fontSize: 16, color: Colors.blue),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
