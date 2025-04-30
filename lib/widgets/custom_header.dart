import 'package:flutter/material.dart';

class CustomHeader extends StatelessWidget implements PreferredSizeWidget {
  const CustomHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      forceMaterialTransparency: true,
      backgroundColor: Colors.white,

      scrolledUnderElevation: 0,
      elevation: 0,

      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset('assets/images/logo.jpg', height: 60),
          const Text(
            "BookVerse",
            style: TextStyle(
              fontFamily: 'Lucida Calligraphy',
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          const Row(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('assets/images/person.jpg'),
                radius: 20,
              ),
              SizedBox(width: 10),
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
