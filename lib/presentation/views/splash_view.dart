import 'dart:async';
import 'package:flutter/material.dart';
import 'package:library_app/presentation/views/login_view.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});
  static const String routeName = '/splash';

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;
  late Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    _scaleAnimation = Tween<double>(begin: 0.7, end: 1.0).animate(
      CurvedAnimation(parent: _controller, curve: Curves.elasticOut),
    );

    _fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeIn),
    );

    _controller.forward();

    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, LoginView.routeName);
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFFBBD2C5),
              Color.fromARGB(255, 10, 63, 94),
              Color.fromARGB(255, 100, 173, 218),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: FadeTransition(
            opacity: _fadeAnimation,
            child: ScaleTransition(
              scale: _scaleAnimation,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/book.png',
                    width: 150,
                    height: 150,
                  ),
                  const SizedBox(height: 30),
                  const Text(
                    "BookVerse",
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                      letterSpacing: 2,
                      fontFamily: 'Lucida Calligraphy',
                      shadows: [
                        Shadow(
                          color: Colors.black54,
                          offset: Offset(2, 2),
                          blurRadius: 4,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
const Text(
  "Explore. Read. Evolve.",
  style: TextStyle(
    fontSize: 19,
    color: Colors.white70,
    fontStyle: FontStyle.italic,
    letterSpacing: 1,
  ),
),
const SizedBox(height: 8),
const Text(
  "Your digital library, always with you.",
  style: TextStyle(
    fontSize: 17,
    color: Colors.white60,
    letterSpacing: 0.5,
  ),
),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
