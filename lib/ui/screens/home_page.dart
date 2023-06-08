import 'package:etches_app/ui/screens/cart_page.dart';
import 'package:etches_app/ui/widgets/Custom_bottomNavBar.dart';
import 'package:etches_app/ui/widgets/custom_app_bar.dart';
import 'package:etches_app/ui/widgets/home_page_body.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  static String id = 'Home Page';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const CustomBottomNavBar(),
      backgroundColor: Colors.white,
      appBar: CustomAppBar().getAppBar(
        context,
        icon: FontAwesomeIcons.cartShopping,
        title: 'ETCHES',
        navigatedTo: CartPage.id,
      ),
      body: const HomePageBody(),
    );
  }
}
