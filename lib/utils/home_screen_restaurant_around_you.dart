import 'package:crisfood/const/colors.dart';
import 'package:crisfood/const/constant.dart';
import 'package:crisfood/utils/chip_util.dart';
import 'package:flutter/material.dart';

class RestaurantAroundYouCard extends StatelessWidget {
  final String imageName;
  final String name;
  final String description;
  final String address;
  final String tag;
  final String rating;
  final String duration;
  final String special;
  const RestaurantAroundYouCard(
      {required this.imageName,
      required this.name,
      required this.description,
      required this.address,
      required this.tag,
      required this.rating,
      required this.duration,
      required this.special});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(16.0),
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(color: ColorsCustom.grayHint, blurRadius: 4.0)
        ], color: Colors.white, borderRadius: BorderRadius.circular(8.0)),
        child: Row(
          children: [
            Container(
                width: 80.0, child: Image.asset("assets/images/$imageName")),
            const SizedBox(
              width: 16.0,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: kTextStyleSemiBoldBlack16,
                ),
                Text(
                  description,
                  style: kTextStyleHintRegularGray14,
                ),
                Text(
                  address,
                  style: kTextStyleRegularBlack14,
                ),
                const SizedBox(
                  height: 8.0,
                ),
                const SizedBox(height: 8.0),
                Row(
                  children: [
                    ChipUtil(
                        name: rating,
                        image: "star_icon.svg",
                        color: ColorsCustom.starOrange),
                    const SizedBox(
                      width: 8.0,
                    ),
                    ChipUtil(
                        name: "$duration min",
                        image: "clock_icon.svg",
                        color: ColorsCustom.durationGreen)
                  ],
                )
              ],
            )
          ],
        ));
  }
}
