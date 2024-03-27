import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text(
        "MyStore",
        style: TextStyle(
            color: Color.fromARGB(255, 255, 255, 255),
            fontSize: 30,
            fontFamily: 'Foundation',
            fontWeight: FontWeight.w900),
      ),
      centerTitle: true,
      backgroundColor: const Color.fromARGB(255, 0, 89, 255),
      actions: [
        IconButton(
            color: Colors.white,
            onPressed: () => print('Ready for Shopping !'),
            icon: const Icon(Icons.shopping_bag)),
        IconButton(
            color: Colors.white,
            onPressed: () => print('Search an article'),
            icon: const Icon(Icons.shopping_cart))
      ],

      //backgroundColor: const Color(DateTime.august),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(55);
}
