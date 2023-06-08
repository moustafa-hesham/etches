import 'package:etches_app/ui/screens/home_page.dart';
import 'package:etches_app/ui/widgets/Product_checkout_card.dart';
import 'package:etches_app/ui/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../widgets/custom_app_bar.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});
  static String id = 'Cart Page';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar().getAppBar(
          context,
          icon: FontAwesomeIcons.house,
          title: 'Cart',
          navigatedTo: HomePage.id,
        ),
        body: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
                padding: EdgeInsets.all(8.0),
                child: ProductCard(
                    imageUrl:
                        'https://i.pinimg.com/originals/c9/54/23/c95423d6cca9fc41e31012173d1428ab.jpg',
                    name: 'Product',
                    price: 11)),
            Spacer(),
            CustomButton(ButtonName: 'Checkout'),
            Spacer()
          ],
        ));
  }
}
