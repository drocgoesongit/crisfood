import 'package:crisfood/utils/home_screen_popular_cuisine_card.dart';
import 'package:flutter/material.dart';

class CheckingScreen extends StatelessWidget {
  const CheckingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PopularCuisineCard(imagePath: "rice_icon.png", name: "rice"),
    );
  }
}
