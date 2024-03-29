import 'package:crisfood/models/offer_around_you_model.dart';
import 'package:crisfood/models/popular_cuisine_model.dart';
import 'package:crisfood/models/restaurants_near_model.dart';
import 'package:crisfood/utils/home_screen_restaurant_around_you.dart';
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

  List<OffersAroundYouModel> getOffersAroundYou() {
    List<OffersAroundYouModel> offersList = [
      OffersAroundYouModel(name: "300off", image: "300_off.png"),
      OffersAroundYouModel(name: "75%off", image: "75_percent.png"),
      OffersAroundYouModel(name: "30%off", image: "30_percent.png"),
      OffersAroundYouModel(name: "25%off", image: "25_percent.png"),
      OffersAroundYouModel(name: "20%off", image: "20_percent.png"),
    ];

    return offersList;
  }

  List<RestaurantsAroundYouModel> getRestaurantAroundYouList() {
    List<RestaurantsAroundYouModel> restaurantList = [
      const RestaurantsAroundYouModel(
          imageName: "dalvi_hotel.png",
          name: "Abdul Wahab Dalvi",
          description: "Sweets & Farsan",
          address: "Mumbra station.",
          tag: "popular",
          rating: "4.0",
          duration: "30",
          special: "₹250 for two"),
      const RestaurantsAroundYouModel(
          imageName: "dalvi_hotel.png",
          name: "Abdul Wahab Dalvi",
          description: "Sweets & Farsan",
          address: "Mumbra station.",
          tag: "popular",
          rating: "4.0",
          duration: "30",
          special: "₹250 for two"),
      const RestaurantsAroundYouModel(
          imageName: "dalvi_hotel.png",
          name: "Abdul Wahab Dalvi",
          description: "Sweets & Farsan",
          address: "Mumbra station.",
          tag: "popular",
          rating: "4.0",
          duration: "30",
          special: "₹250 for two"),
      const RestaurantsAroundYouModel(
          imageName: "dalvi_hotel.png",
          name: "Abdul Wahab Dalvi",
          description: "Sweets & Farsan",
          address: "Mumbra station.",
          tag: "popular",
          rating: "4.0",
          duration: "30",
          special: "₹250 for two"),
      const RestaurantsAroundYouModel(
          imageName: "dalvi_hotel.png",
          name: "Abdul Wahab Dalvi",
          description: "Sweets & Farsan",
          address: "Mumbra station.",
          tag: "popular",
          rating: "4.0",
          duration: "30",
          special: "₹250 for two"),
    ];

    return restaurantList;
  }

  List<PopularCuisineModel> getCarouselImageList() {
    List<PopularCuisineModel> list = [
      PopularCuisineModel(
          imagePath: "assets/images/burger1.png", name: "burger 1"),
      PopularCuisineModel(
          imagePath: "assets/images/burger2.png", name: "burger 2"),
      PopularCuisineModel(
          imagePath: "assets/images/burger3.png", name: "burger 3"),
    ];
    return list;
  }
}
