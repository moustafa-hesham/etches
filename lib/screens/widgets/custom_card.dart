import 'package:etches_app/models/model.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key, required this.products});
  final ProductModel products;
  @override
  Widget build(BuildContext context) {
    return Stack(
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
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            elevation: 10,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
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
                      const Icon(
                        FontAwesomeIcons.solidHeart,
                        color: Colors.red,
                      ),
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
    );
  }
}
