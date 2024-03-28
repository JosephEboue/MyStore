import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:store/widgets/common/appbar_widget.dart';
import 'package:store/widgets/common/drawer_widget.dart';
import 'package:store/widgets/screen/home/marquee.dart';
import 'package:store/widgets/details/product_details.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(),
      drawer: const DrawerWidget(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            MarqueeWidget(),
            // const Text(
            //   'Bonjour',
            //   textAlign: TextAlign.center,
            //   style: TextStyle(
            //       backgroundColor: Color.fromARGB(255, 101, 186, 255)),
            // ),
            // Image.asset('assets/images/shop1.png'),
            // Image.network(
            //     'https://img.freepik.com/photos-gratuite/homme-souriant-plein-coup-sacs-provisions_23-2149220645.jpg?size=626&ext=jpg&ga=GA1.2.1847210901.1711376293&semt=sph'),
            Container(
              // width: 400,
              // height: 650,
              height: MediaQuery.of(context).size.height,
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                  // color: Colors.amber,
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          'https://static.thcdn.com/widgets/262-en/52/original-FreeCap_1920x750_UK-085352.jpg'))),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  // BackdropFilter(
                  //   filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
                  //   child: Container(
                  //     color: Colors.black.withOpacity(
                  //         0.5), // Adjust the opacity for desired effect
                  //   ),
                  // ),
                  OutlinedButton(
                    onPressed: () {
                      context.pushNamed('details');
                    },
                    style: OutlinedButton.styleFrom(
                      // shape: const BeveledRectangleBorder(),
                      backgroundColor: const Color.fromRGBO(0, 106, 255, 1),
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.all(15),
                      side: const BorderSide(
                        width: 2,
                        color: Colors.white,
                      ),
                    ),
                    child: const Text(
                      'Start Shopping ! 🛍️',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ],
              ),
            ),
            // ProductDetails(),
          ],
        ),
      ),
    );
  }
}
