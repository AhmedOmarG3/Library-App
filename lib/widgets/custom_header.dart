import 'package:flutter/material.dart';

class CustomHeader extends StatelessWidget implements PreferredSizeWidget {
  const CustomHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset('assets/images/books.avif', height: 80),
          const Text(
            "BookVerse",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          Row(
            children: [
              const CircleAvatar(
                backgroundImage: AssetImage('assets/images/person.png'),
                radius: 25,
              ),
              const SizedBox(width: 10),
              IconButton(
                icon: const Icon(
                  Icons.menu,
                  color: Colors.black,
                  size: 40,
                ),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
              ),
            ],
          ),
        ],
      ),
      // centerTitle: true,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(70);
}
