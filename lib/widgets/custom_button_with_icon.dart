import 'package:flutter/material.dart';

class CustomButtonWithIcon extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color color;
  final Color textColor;

  const CustomButtonWithIcon({
    super.key,
    required this.text,
    required this.onPressed,
    this.color = Colors.blue,
    this.textColor = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          elevation: 20,
          backgroundColor: color,
          padding: const EdgeInsets.symmetric(vertical: 15),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('assets/images/google icon.png'),
              radius: 15,
            ),
            SizedBox(width: 10),
            Text(
              text,
              style: TextStyle(fontSize: 20, color: textColor),
            ),
          ],
        ),
      ),
    );
  }
}
