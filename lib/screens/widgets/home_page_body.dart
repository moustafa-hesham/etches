import 'package:etches_app/screens/product_page.dart';
import 'package:etches_app/screens/widgets/custom_card.dart';
import 'package:flutter/material.dart';

import '../../helper/api.dart';
import '../../models/model.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    final fakeProductApi =
        FakeProductApi(); // Create an instance of FakeProductApi
    final List<ProductModel> products =
        fakeProductApi.products; // Get the list of products

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
                      arguments: products);
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
