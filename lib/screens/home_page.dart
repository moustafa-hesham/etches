import 'package:etches_app/screens/cart_page.dart';
import 'package:etches_app/screens/widgets/home_page_body.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  static String id = 'Home Page';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.5,
        centerTitle: true,
        title: const Text(
          'ETCHES',
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
      body: HomePageBody(),
    );
  }
}
