import 'package:flutter/material.dart';
import 'package:library_app/helpers/signUp_method.dart';
import 'package:library_app/presentation/views/login_view.dart';
import 'package:library_app/widgets/custom_button.dart';
import 'package:library_app/widgets/custom_button_with_icon.dart';
import 'package:library_app/widgets/custom_header.dart';
import 'package:library_app/widgets/custom_text_field.dart';
import 'package:library_app/helpers/show_snak_bar.dart';

class CreateAccountView extends StatefulWidget {
  const CreateAccountView({super.key});
  static const routeName = '/CreateAccountView';

  @override
  State<CreateAccountView> createState() => _CreateAccountViewState();
}

class _CreateAccountViewState extends State<CreateAccountView> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode? autovalidateMode = AutovalidateMode.disabled;
  String? email;
  String? password;
  String? confirmPassword;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomHeader(),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SafeArea(
          child: Form(
            key: formKey,
            autovalidateMode: autovalidateMode,
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
                CustomTextField(
                    label: 'User Name',
                    onChanged: (p0) => email = p0,
                    hintText: "User Name"),
                const SizedBox(height: 5),
                CustomTextField(
                    onChanged: (p0) => email = p0,
                    label: 'Email',
                    hintText: "Email"),
                const SizedBox(height: 5),
                CustomTextField(
                    onChanged: (p0) => password = p0,
                    label: 'Password',
                    hintText: "Password",
                    isPassword: true),
                const SizedBox(height: 5),
                CustomTextField(
                  onChanged: (p0) => confirmPassword = p0,
                  hintText: "Confirm Password",
                  isPassword: true,
                  label: 'Confirm Password',
                ),
                const SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: CustomButton(
                      text: 'Create Account',
                      onPressed: () async {
                        if (formKey.currentState!.validate()) {
                          if (password != confirmPassword) {
                            showSnakBar(context, 'Passwords do not match');
                            return;
                          }
                          await createAccountFirbase(context,email: email!, password: password!);
                        } else {
                          setState(() {
                            autovalidateMode = AutovalidateMode.always;
                          });
                        }
                      }),
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
        ),
      )),
    );
  }
}
