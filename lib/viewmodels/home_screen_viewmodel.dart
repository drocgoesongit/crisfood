import 'package:crisfood/models/popular_cuisine_model.dart';
import 'package:flutter/material.dart';

class HomeScreenViewModel {
  // method to return popularCuisineList.
  List<PopularCuisineModel> getPopularCuisineList() {
    List<PopularCuisineModel> popularCuisineList = [
      PopularCuisineModel(
          imagePath: "pizza_icon.png", name: "Pizzaadjfa;ldkf;adfj"),
      PopularCuisineModel(imagePath: "rice_icon.png", name: "Rice"),
      PopularCuisineModel(imagePath: "burger_icon.png", name: "Burger"),
      PopularCuisineModel(imagePath: "cake_icon.png", name: "Cake"),
      PopularCuisineModel(imagePath: "pizza_icon.png", name: "Pizza"),
      PopularCuisineModel(imagePath: "rice_icon.png", name: "Rice"),
      PopularCuisineModel(imagePath: "burger_icon.png", name: "Burger"),
      PopularCuisineModel(imagePath: "cake_icon.png", name: "Cake"),
    ];

    return popularCuisineList;
  }
}
