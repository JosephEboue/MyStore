import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:store/widgets/common/appbar_widget.dart';
import 'package:store/widgets/screen/product_item/buy_product_grid.dart';

class BuyProduct extends StatelessWidget {
  const BuyProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: AppBarWidget(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            BuyProductGrid(),
          ],
        ),
      ),
    );
  }
}
