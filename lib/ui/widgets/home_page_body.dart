import 'package:etches_app/ui/screens/product_page.dart';
import 'package:etches_app/ui/widgets/custom_card.dart';
import 'package:flutter/material.dart';

import '../../logic/home_logic.dart';
import '../../network/services/api.dart';
import '../../network/models/model.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    var products = HomeLogic.getProducts();

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 38),
      child: Padding(
        padding: const EdgeInsets.only(
          left: 16,
          right: 16,
        ),
        child: GridView.builder(
            itemCount: products.length,
            clipBehavior: Clip.none,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1.1,
                crossAxisSpacing: 10,
                mainAxisSpacing: 50),
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, ProductPage.id,
                      arguments: products[index]);
                },
                child: CustomCard(
                  products: products[index],
                ),
              );
            }),
      ),
    );
  }
}
