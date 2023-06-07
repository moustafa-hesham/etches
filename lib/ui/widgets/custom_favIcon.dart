import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FavIcon extends StatefulWidget {
  // final Function()? onTap;
  const FavIcon({super.key});

  @override
  State<FavIcon> createState() => _FavIconState();
}

class _FavIconState extends State<FavIcon> {
  bool isTapped = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // widget.onTap;
        isTapped = !isTapped;
        setState(() {});
      },
      child: Icon(
        FontAwesomeIcons.solidHeart,
        color: isTapped ? Colors.red : Colors.black,
      ),
    );
  }
}
