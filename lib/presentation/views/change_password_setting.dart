import 'package:flutter/material.dart';

import 'package:library_app/widgets/custom_button.dart';

import 'package:library_app/widgets/custom_header.dart';
import 'package:library_app/widgets/custom_text_field.dart';

class ChangePasswordSetting extends StatelessWidget {
  const ChangePasswordSetting({super.key});
static const routeName = 'ChangePasswordView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomHeader(),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/Reset password-rafiki.png',
                height: 300,
              ),
              const SizedBox(height: 20),
              const CustomTextField(
                hintText: "* * * * * * * * ",
                label: 'Current Password',
                isPassword: true,
              ),
              const SizedBox(height: 5),
              const CustomTextField(
                hintText: "* * * * * * * *",
                label: 'New Password',
                isPassword: true,
              ),
              const SizedBox(height: 5),
              const CustomTextField(
                hintText: "* * * * * * * *",
                label: 'Confirm Password',
                isPassword: true,
              ),
              const SizedBox(height: 30),
              Row(
                children: [
                  CustomButton(
                    text: 'Cancel',
                    onPressed: () {},
                    width: (MediaQuery.of(context).size.width / 2) - 30,
                    color: Colors.white,
                    textColor: Colors.black,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  CustomButton(
                    text: 'Save Changes',
                    onPressed: () {},
                    width: (MediaQuery.of(context).size.width / 2) - 30,
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
