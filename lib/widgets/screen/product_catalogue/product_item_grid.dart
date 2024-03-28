import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:store/models/product.dart';
import 'package:store/providers/product_provider.dart';

class ProductItemGrid extends StatelessWidget {
  Product product;
  ProductItemGrid({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 200,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
              product.image,
            )),
          ),
        ),
        Text(product.title),
        Text(
          product.price.toString() + ' €',
          style: const TextStyle(
            color: Colors.red,
            fontWeight: FontWeight.w500,
          ),
        ),
        OutlinedButton(
          onPressed: () {
            // stocker le produit dans le provider
            context.read<ProductProvider>().product = product;

            // inspect(context.watch<ProductProvider>().product);
            // naviguer vers la page de détails du produit
            context.pushNamed('item');
          },
          style: OutlinedButton.styleFrom(
              backgroundColor: Colors.black,
              foregroundColor: Colors.white,
              shape: const BeveledRectangleBorder(),
              side: const BorderSide(
                color: Colors.transparent,
              )),
          child: const Text('Buy now'),
        )
      ],
    );
  }
}
