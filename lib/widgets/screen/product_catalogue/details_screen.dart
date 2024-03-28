import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:store/widgets/common/appbar_widget.dart';
import 'package:store/widgets/common/drawer_widget.dart';
import 'package:store/widgets/details/product_details.dart';
import 'package:store/widgets/screen/home/marquee.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

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
            ProductDetails(),
            const Text(
              'Détails Page',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
              ),
            ),
            TextButton(
              onPressed: () {
                context.pop();
              },
              child: const Text('Back to home'),
            )
          ],
        ),
      ),
    );
  }
}
