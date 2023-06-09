import 'package:etches_app/network/models/model.dart';
import 'package:etches_app/ui/widgets/custom_favIcon.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../screens/product_page.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key, required this.products, required this.index});
  final ProductModel products;
  final int index;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, ProductPage.id, arguments: products);
      },
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            height: 200,
            width: 230,
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                blurRadius: 40,
                color: Colors.grey.withOpacity(0.1),
                spreadRadius: 0,
                offset: const Offset(10, 5),
              )
            ]),
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)),
              elevation: 10,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      products.name,
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('USD ${products.price}',
                            style: const TextStyle(
                                fontSize: 16,
                                color: Color.fromARGB(255, 111, 111, 111))),
                        FavIcon(),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            right: 5,
            bottom: 70,
            child: Image.network(
              products.photoUrl,
              height: 120,
            ),
          ),
        ],
      ),
    );
  }
}
