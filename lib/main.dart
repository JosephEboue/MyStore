import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:store/providers/cart_provider.dart';
import 'package:store/providers/product_provider.dart';
import 'package:store/services/router_service.dart';

void main() => runApp(
      MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => ProductProvider(),
          ),
          ChangeNotifierProvider(
            create: (context) => CartProvider(),
          ),
        ],
        child: const App(),
      ),
    );

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: (RouterService()).getRouter(),
      title: "Store",
      debugShowCheckedModeBanner: false,
      // home: HomeScreen(),
    );
  }
}
