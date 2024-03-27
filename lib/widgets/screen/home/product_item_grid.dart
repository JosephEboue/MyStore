import 'package:flutter/material.dart';
import 'package:store/models/products.dart';

class ProductItemGrid extends StatelessWidget {
  Products product;
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
          product.price.toString() + ' £',
          style: TextStyle(
            color: Colors.red,
            fontWeight: FontWeight.w500,
          ),
        ),
        OutlinedButton(
          onPressed: () {},
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
