import 'package:etches_app/ui/widgets/product_page_body.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../network/models/model.dart';
import '../widgets/custom_app_bar.dart';
import 'cart_page.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});
  static String id = 'Product page';
  @override
  Widget build(BuildContext context) {
    final ProductModel product =
        ModalRoute.of(context)!.settings.arguments as ProductModel;

    return Scaffold(
      appBar: CustomAppBar().getAppBar(
        context,
        icon: FontAwesomeIcons.cartShopping,
        title: 'Product',
        navigatedTo: CartPage.id,
      ),
      body: ProductPageBody(
        products: product,
      ),
    );
  }
}
