import 'package:flutter/material.dart';
import 'package:library_app/presentation/views/create_account_view.dart';
import 'package:library_app/presentation/views/edit_detalis_view.dart';
import 'package:library_app/presentation/views/error_page.dart';
import 'package:library_app/presentation/views/forget_password_view.dart';
import 'package:library_app/presentation/views/home_view.dart';
import 'package:library_app/presentation/views/login_view.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
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
          _buildDrawerItem(
              context, ' Forget password page', ForgetPasswordView.routeName),
          _buildDrawerItem(context, ' Error page', ErrorPage.routeName),
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
