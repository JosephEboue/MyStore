import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:store/models/product.dart';

class CartProvider extends ChangeNotifier {
  final List<Map> _cart = [];
  int _cartLength = 0;

  // getter/setter
  int get cartLength => _cartLength;
  set cartLength(int value) => _cartLength = value;

  // rechercher l'indice d'un produit dans le panier
  dynamic _searchProductIndexInCart(int id) {
    for (int i = 0; i < _cart.length; i++) {
      if (id == _cart[i]['product'].id) {
        return i;
      }
    }

    // si le produit n'est pas présent dans le panier
    return -1;
  }

  // ajouter au panier
  void addToCart(Product product) {
    // si le panier n'est pas vide
    if (_cart.isNotEmpty) {
      // tester si le produit n'est pas déjà présent dans le panier
      dynamic searchIndex = _searchProductIndexInCart(product.id);

      if (searchIndex == -1) {
        Map order = {'quantity': 1, 'product': product};
        _cart.add(order);
      } else {
        _cart[searchIndex]['quantity']++;
      }
    }
    // si le panier est vide
    else {
      Map order = {'quantity': 1, 'product': product};
      _cart.add(order);
    }
    inspect(_cart);

    _cartLength = _cart.length;

    notifyListeners();
  }
}
