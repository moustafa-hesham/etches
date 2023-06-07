import 'package:etches_app/ui/widgets/product_page_body.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../network/models/model.dart';
import 'cart_page.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});
  static String id = 'Product page';
  @override
  Widget build(BuildContext context) {
    final ProductModel product =
        ModalRoute.of(context)!.settings.arguments as ProductModel;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.5,
        centerTitle: true,
        title: const Text(
          'Product',
          style: TextStyle(color: Colors.black, fontSize: 24),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, CartPage.id);
            },
            icon: const Icon(FontAwesomeIcons.cartPlus),
            color: Colors.black,
          )
        ],
      ),
      body: ProductPageBody(
        products: product,
      ),
    );
  }
}
