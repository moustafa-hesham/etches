import 'package:flutter/material.dart';

import '../screens/cart_page.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.ButtonName});
  final String ButtonName;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 350,
      child: ElevatedButton(
        onPressed: () {
          Navigator.pushNamed(context, CartPage.id);
        },
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
          foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
          elevation: MaterialStateProperty.all<double>(4),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        child: Text(
          ButtonName,
          style: TextStyle(fontSize: 24),
        ), // Set the button's label
      ),
    );
  }
}
