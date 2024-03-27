import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:store/widgets/common/appbar_widget.dart';
import 'package:store/widgets/common/drawer_widget.dart';
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
            Image.network(
                'https://media.istockphoto.com/id/1217758856/fr/vectoriel/ic%C3%B4ne-de-couleur-de-liste-dachats-planification-des-achats-en-magasin-ajout-de-produits.jpg?s=170667a&w=0&k=20&c=VqbllzLqTq0cAufYUz3tWYIrjSxOt_t-LwWPai1nkkc='),
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
