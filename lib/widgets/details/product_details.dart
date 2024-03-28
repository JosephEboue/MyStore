import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:store/models/product.dart';
import 'package:store/services/api_service_controller.dart';
import 'package:store/widgets/screen/product_catalogue/product_item_grid.dart';

class ProductDetails extends StatelessWidget {
  ProductDetails({super.key});

  final ApiService _apiService = ApiService();

  @override
  Widget build(BuildContext context) {
    inspect(_apiService.getPosts());
    return FutureBuilder(
      future: _apiService.getPosts(),
      builder: (context, snapshot) {
//snapshot contient les données
        if (snapshot.hasData) {
          List products = snapshot.requireData;
          // inspect(products);
          return GridView.builder(
            itemCount: products.length,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 15,
              mainAxisSpacing: 15,
              childAspectRatio: 0.5,
            ),
            itemBuilder: (context, index) {
              return ProductItemGrid(product: products[index]);
            },
          );
        } else {
          return const SizedBox(
            height: 10,
            child: CircularProgressIndicator(
              strokeWidth: 4,
              color: Colors.blue,
            ),
          );
        }
      },
    );
  }
}
