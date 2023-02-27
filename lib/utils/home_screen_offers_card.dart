import 'package:flutter/material.dart';

class OffersCardHomeScreen extends StatelessWidget {
  final String image;
  final String name;
  const OffersCardHomeScreen({required this.image, required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 8.0),
      width: 128.0,
      height: 120.0,
      child: Image.asset(
        "assets/images/$image",
        fit: BoxFit.fitHeight,
      ),
    );
  }
}
