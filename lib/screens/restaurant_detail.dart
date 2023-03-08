import 'package:flutter/material.dart';

class RestaurantDetailScreen extends StatelessWidget {
  const RestaurantDetailScreen({super.key});

  void searchTapped(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
      content: Text("Search icon clicked."),
      duration: Duration(seconds: 2),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          actions: [
            GestureDetector(
                onTap: () => searchTapped(context),
                child: Icon(
                  Icons.search,
                ))
          ],
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            Text(
              "Restaurant Name",
            ),
            Text(
              "dishes",
            ),
            Text(
              "address",
            ),
            // divider
          ]),
        ),
      ),
    );
  }
}
