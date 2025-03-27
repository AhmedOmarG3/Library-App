import 'package:flutter/material.dart';
import 'package:library_app/presentation/views/error_page.dart';
import 'package:library_app/presentation/views/forget_password_view.dart';
import 'package:library_app/presentation/views/login_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ErrorPage(),
      ),
    );
  }
}
