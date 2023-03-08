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
  Function() sendToRestaurantDetailScreen;

  RestaurantAroundYouCard({
    required this.imageName,
    required this.name,
    required this.description,
    required this.address,
    required this.tag,
    required this.rating,
    required this.duration,
    required this.special,
    required this.sendToRestaurantDetailScreen,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            sendToRestaurantDetailScreen();
          },
          child: Container(
              padding: const EdgeInsets.all(16.0),
              margin: const EdgeInsets.symmetric(horizontal: 10.0),
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 8.0,
                    offset: const Offset(0, 2),
                    spreadRadius: 3.0),
              ], color: Colors.white, borderRadius: BorderRadius.circular(8.0)),
              child: Row(
                children: [
                  Container(
                      width: 90.0,
                      child: Image.asset("assets/images/$imageName")),
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
              )),
        ),
        const SizedBox(
          height: 10.0,
        ),
      ],
    );
  }
}
