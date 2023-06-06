import 'package:etches_app/models/model.dart';
import 'package:flutter/material.dart';

import 'custom_button.dart';

class ProductPageBody extends StatelessWidget {
  const ProductPageBody({super.key});

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
            '${products.price}',
            style: const TextStyle(
              fontSize: 30,
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
