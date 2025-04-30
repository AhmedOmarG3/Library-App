import 'package:flutter/material.dart';
import 'package:library_app/helpers/sign_In_method.dart';
import 'package:library_app/presentation/views/create_account_view.dart';
import 'package:library_app/widgets/custom_button.dart';
import 'package:library_app/widgets/custom_header.dart';
import 'package:library_app/widgets/custom_text_field.dart';
import 'forget_password_view.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});
  static const routeName = '/LoginView';

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  String? email;
  String? password;
  AutovalidateMode? autovalidateMode = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const CustomHeader(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Form(
          autovalidateMode: autovalidateMode,
          key: formKey,
          child: SingleChildScrollView(
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
                CustomTextField(
                    onChanged: (p0) => email = p0,
                    label: 'Email',
                    hintText: "Enter your email"),
                const SizedBox(height: 15),
                CustomTextField(
                  onChanged: (p0) => password = p0,
                  label: 'Password',
                  hintText: "Enter your Password",
                  isPassword: true,
                ),
                const SizedBox(height: 10),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushNamed(
                          context, ForgetPasswordView.routeName,arguments: email??'');
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
                    onPressed: () async {
                      if (formKey.currentState!.validate()) {
                        await signWithEmailAndPassword(context,
                            email: email!, password: password!);
                      } 
                    }),
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
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CreateAccountView()));
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
        ),
      ),
    );
  }
}
