import 'package:flutter/material.dart';
import 'package:store/models/product.dart';

class ProductProvider extends ChangeNotifier {
  Product? _product;

  // getter  /setter
  Product? get product => _product;

  set product(Product? product) {
    _product = product;
    notifyListeners();
  }
}
