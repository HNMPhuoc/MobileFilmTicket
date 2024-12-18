import 'package:flutter/material.dart';

class AppbarLayout extends StatelessWidget implements PreferredSizeWidget {
  const AppbarLayout({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(90);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 90,
      backgroundColor: const Color.fromRGBO(35, 35, 35, 1),
      elevation: 0,
      titleSpacing: 20,
      leading: Builder(
        builder: (context) => IconButton(
          icon: const Icon(Icons.menu, color: Colors.white, size: 34),
          onPressed: () {
            Scaffold.of(context).openDrawer(); // Mở Drawer
          },
        ),
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.search, color: Colors.white, size: 34),
          onPressed: () {},
        ),
        const SizedBox(width: 10),
        IconButton(
          icon: const Icon(Icons.notifications_none, color: Colors.white, size: 34),
          onPressed: () {},
        ),
        const SizedBox(width: 10),
        const CircleAvatar(
          radius: 26,
          backgroundImage: AssetImage('assets/images/user.jpg'),
          backgroundColor: Colors.grey,
        ),
        const SizedBox(width: 15),
      ],
    );
  }
}
