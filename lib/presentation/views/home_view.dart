import 'package:flutter/material.dart';
import 'package:library_app/presentation/views/change_password_setting.dart';
import 'package:library_app/presentation/views/create_account_view.dart';
import 'package:library_app/presentation/views/edit_detalis_view.dart';
import 'package:library_app/presentation/views/error_page.dart';
import 'package:library_app/presentation/views/forget_password_view.dart';
import 'package:library_app/presentation/views/login_view.dart';

import 'package:library_app/widgets/custom_header.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static const routeName = '/';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: CustomHeader(),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SafeArea(
          child: Container(),
        ),
      )),
    );
  }
}

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(color: Colors.blue),
            child: Text(
              'Library App',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
          _buildDrawerItem(context, 'Home Page', HomeView.routeName),
          _buildDrawerItem(context, 'Edit Details', EditDetalisView.routeName),
          _buildDrawerItem(context, 'Login page', LoginView.routeName),
          _buildDrawerItem(
              context, 'Sign up page', CreateAccountView.routeName),
          _buildDrawerItem(context, ' Forget password page',
              ChangePasswordSetting.routeName),_buildDrawerItem(context, ' Error page',
              ErrorPage.routeName),
        ],
      ),
    );
  }

  Widget _buildDrawerItem(BuildContext context, String title, String route) {
    return ListTile(
      title: Text(title, style: TextStyle(fontSize: 18)),
      onTap: () {
        Navigator.pop(context);
        Navigator.pushReplacementNamed(context, route);
      },
    );
  }
}
