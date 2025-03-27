import 'package:flutter/material.dart';
import 'package:library_app/presentation/views/change_password_setting.dart';
import 'package:library_app/presentation/views/create_account_view.dart';
import 'package:library_app/presentation/views/edit_detalis_view.dart';
import 'package:library_app/presentation/views/error_page.dart';
import 'package:library_app/presentation/views/forget_password_view.dart';
import 'package:library_app/presentation/views/home_view.dart';
import 'package:library_app/presentation/views/login_view.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

 
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        HomeView.routeName: (context) => HomeView(),
       EditDetalisView.routeName : (context) => EditDetalisView(),
        ChangePasswordSetting.routeName: (context) => ChangePasswordSetting(),
        
        ForgetPasswordView.routeName: (context) => ForgetPasswordView(),
        
        LoginView.routeName: (context) => LoginView(),
        
        CreateAccountView.routeName: (context) => CreateAccountView(),ErrorPage.routeName: (context) => ErrorPage(),
      },
    );
  }
}
