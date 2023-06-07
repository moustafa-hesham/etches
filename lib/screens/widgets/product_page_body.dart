import 'package:etches_app/models/model.dart';
import 'package:flutter/material.dart';

import 'custom_button.dart';

class ProductPageBody extends StatelessWidget {
  const ProductPageBody({super.key, required this.products});
  final ProductModel products;
  @override
  Widget build(BuildContext context) {
    final ProductModel products =
        ModalRoute.of(context)!.settings.arguments as ProductModel;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.network(
              products.photoUrl,
              height: 500,
            ),
          ),
          Text(
            products.name,
            style: const TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'USD ${products.price}',
            style: const TextStyle(
              color: Color.fromARGB(255, 84, 84, 84),
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const CustomButton(
            ButtonName: 'Add to Cart',
          )
        ],
      ),
    );
  }
}
