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
<<<<<<< HEAD
          Image.asset('assets/images/logo.jpg', height: 60),
=======
          Image.asset('assets/images/book.png', height: 80),
>>>>>>> 4f6c5efd0311c670c4c6540e373d2ab8a196a60a
          const Text(
            "BookVerse",
            style: TextStyle(
              fontFamily: 'Lucida Calligraphy',
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          Row(
            children: [
              const CircleAvatar(
                backgroundImage: AssetImage('assets/images/person.jpg'),
                radius: 20,
              ),
              const SizedBox(width: 10),
              // IconButton(
              //   icon: const Icon(
              //     Icons.menu,
              //     color: Colors.black,
              //     size: 25,
              //   ),
              //   onPressed: () {
              //     Scaffold.of(context).openDrawer();
              //   },
              // ),
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
