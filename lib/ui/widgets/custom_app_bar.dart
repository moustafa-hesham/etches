import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../screens/cart_page.dart';

class CustomAppBar {
  getAppBar(
    BuildContext context, {
    required String title,
    required IconData icon,
    required String navigatedTo,
  }) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0.5,
      centerTitle: true,
      title: Text(
        title,
        style: const TextStyle(color: Colors.black, fontSize: 24),
      ),
      actions: [
        IconButton(
          onPressed: () {
            Navigator.pushNamed(context, navigatedTo);
          },
          icon: Icon(icon),
          color: Colors.black,
        )
      ],
    );
  }
}
