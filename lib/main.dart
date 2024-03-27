import 'package:flutter/material.dart';
import 'package:store/services/router_service.dart';

void main() => runApp(const App());

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
