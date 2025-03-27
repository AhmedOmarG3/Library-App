import 'package:flutter/material.dart';
import 'package:library_app/presentation/views/login_view.dart';
import 'package:library_app/widgets/custom_button.dart';
import 'package:library_app/widgets/custom_button_with_icon.dart';
import 'package:library_app/widgets/custom_header.dart';
import 'package:library_app/widgets/custom_text_field.dart';

class EditDetalisView extends StatelessWidget {
  const EditDetalisView({super.key});
static const routeName = '/EditDetalisView';
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
                "Edit Your Profile",
                style: TextStyle(
                  color: Colors.green,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              const CustomTextField(
                hintText: "Ahmed",
                label: 'First Name',
              ),
              const SizedBox(height: 5),
              const CustomTextField(
                hintText: "Mooaz",
                label: 'Last Name',
              ),
              const SizedBox(height: 5),
              const CustomTextField(
                hintText: "John@example.com",
                label: 'Email',
              ),
              const SizedBox(height: 5),
              const CustomTextField(
                hintText: "Cairo",
                label: 'Address',
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
