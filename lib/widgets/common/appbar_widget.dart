import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:store/providers/cart_provider.dart';

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
            onPressed: () => print('Profile Setting !'),
            icon: const Icon(Icons.person)),
        Stack(
          children: [
            IconButton(
              color: Colors.white,
              onPressed: () => print('Sopping card'),
              icon: const Icon(Icons.shopping_cart),
            ),
            Positioned(
              right: 2,
              top: 3,
              child: Container(
                width: 20,
                height: 20,
                decoration: const BoxDecoration(
                    color: Colors.red, shape: BoxShape.circle),
                child: Text(
                  context.watch<CartProvider>().cartLength.toString(),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ],
      //backgroundColor: const Color(DateTime.august),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(55);
}
