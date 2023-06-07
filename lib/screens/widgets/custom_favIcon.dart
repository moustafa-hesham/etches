import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FavIcon extends StatefulWidget {
  const FavIcon({super.key});

  @override
  State<FavIcon> createState() => _FavIconState();
}

class _FavIconState extends State<FavIcon> {
  bool isTapped = false;
  void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Icon(
        FontAwesomeIcons.solidHeart,
        color: isTapped ? Colors.red : Colors.black,
      ),
    );
  }
}
