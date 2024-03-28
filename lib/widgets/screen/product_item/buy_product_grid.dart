import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:provider/provider.dart';
import 'package:store/models/product.dart';
import 'package:store/providers/cart_provider.dart';
import 'package:store/providers/product_provider.dart';

class BuyProductGrid extends StatelessWidget {
  const BuyProductGrid({super.key});

  @override
  Widget build(BuildContext context) {
    // récupérer le produit stocké dans le provider
    Product? product = context.watch<ProductProvider>().product;

    return Container(
      padding: const EdgeInsets.all(15),
      child: Column(
        children: [
          /*
            ? : indiquer que la donnée peut être nulle
            ! : indiquer que la donnée n'est pas nulle
          */
          Image.network(
            product!.image,
            // MediaQuery.of(context).size.width : récupérer la largeur de l'écran
            width: MediaQuery.of(context).size.width * 0.5,
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            product.title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 20,
              fontFamily: 'Foundation',
              fontWeight: FontWeight.w900,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Text(product.description),
          const SizedBox(
            height: 15,
          ),
          Text('${product.price.toStringAsFixed(2)}€'),
          const SizedBox(
            height: 15,
          ),
          RatingBarIndicator(
            rating: product.rating['rate'],
            itemBuilder: (context, index) => const Icon(
              Icons.star,
              color: Colors.amber,
            ),
            itemCount: 5,
            itemSize: 30.0,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              OutlinedButton(
                onPressed: () {
                  context.read<CartProvider>().addToCart(product);
                },
                style: OutlinedButton.styleFrom(
                    backgroundColor: Colors.black,
                    foregroundColor: Colors.white,
                    shape: const BeveledRectangleBorder(),
                    side: const BorderSide(
                      color: Colors.transparent,
                    )),
                child: const Text('Add to card'),
              ),
            ],
          )
        ],
      ),
    );
  }
}
