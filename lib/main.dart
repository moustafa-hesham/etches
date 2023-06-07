import 'package:etches_app/ui/screens/cart_page.dart';
import 'package:etches_app/ui/screens/home_page.dart';
import 'package:etches_app/ui/screens/product_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const EtchesApp());
}

class EtchesApp extends StatelessWidget {
  const EtchesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomePage.id,
      routes: {
        HomePage.id: (context) => const HomePage(),
        CartPage.id: (context) => const CartPage(),
        ProductPage.id: (context) => const ProductPage(),
      },
    );
  }
}
