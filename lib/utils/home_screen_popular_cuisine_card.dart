import 'package:crisfood/const/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PopularCuisineCard extends StatelessWidget {
  final String imagePath;
  final String name;
  const PopularCuisineCard({required this.imagePath, required this.name});

  @override
  Widget build(BuildContext context) {
    // Dimensions
    final heightDevice = MediaQuery.of(context).size.height / 100;

    return Column(
      children: [
        CircleAvatar(
          radius: 40,
          child: Image.asset("assets/images/$imagePath"),
        ),
        SizedBox(
          height: heightDevice * 1.3, // dp 10 equivalent.
        ),
        Text(
          "$name",
          style: kTextStyleHintRegularGray14,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        )
      ],
    );
  }
}
