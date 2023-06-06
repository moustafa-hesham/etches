import 'package:etches_app/screens/widgets/Product_checkout_card.dart';
import 'package:etches_app/screens/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});
  static String id = 'Cart Page';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.5,
          centerTitle: true,
          title: const Text(
            'Cart',
            style: TextStyle(color: Colors.black, fontSize: 24),
          ),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(FontAwesomeIcons.house),
              color: Colors.black,
            )
          ],
        ),
        body: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
                padding: const EdgeInsets.all(8.0),
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
