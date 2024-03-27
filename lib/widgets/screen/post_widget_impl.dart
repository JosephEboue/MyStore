import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:store/services/api_service_controller.dart';
import 'package:store/widgets/screen/home/product_item_grid.dart';

class PostWidget extends StatelessWidget {
  PostWidget({super.key});

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
              childAspectRatio: 1,
            ),
            itemBuilder: (context, index) {
              return const ProductItemGrid();
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
