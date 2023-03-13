import 'package:crisfood/const/colors.dart';
import 'package:crisfood/const/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RestaurantScreenPropertiesChip extends StatelessWidget {
  final String rating;
  final String ratingText;

  const RestaurantScreenPropertiesChip(
      {required this.rating, required this.ratingText});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 5.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Rating part =======================================================
          Container(
            padding:
                const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8.0),
                boxShadow: const [
                  BoxShadow(
                      color: Colors.black12,
                      offset: Offset(0, 2),
                      blurRadius: 10.0)
                ]),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                        width: 14.0,
                        height: 14.0,
                        child: SvgPicture.asset(
                          "assets/images/star_icon.svg",
                          fit: BoxFit.fill,
                        )),
                    const SizedBox(
                      width: 4.0,
                    ),
                    Text(
                      rating,
                      style: kTextStyleSemiBoldBlack14,
                    ),
                    const SizedBox(
                      width: 2.0,
                    ),
                    const Icon(
                      Icons.arrow_forward_ios_rounded,
                      size: 14.0,
                      color: ColorsCustom.grayHint,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 2.0,
                ),
                Text(
                  "This is rating.",
                  style: kTextStyleHintRegularGray12,
                )
              ],
            ),
          ),
          const SizedBox(
            width: 16.0,
          ),

          // second part =======================================================

          Container(
            padding:
                const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8.0),
                boxShadow: const [
                  BoxShadow(
                      color: Colors.black12,
                      offset: Offset(0, 2),
                      blurRadius: 10.0)
                ]),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                        width: 14.0,
                        height: 14.0,
                        child: SvgPicture.asset(
                          "assets/images/clock_icon.svg",
                          fit: BoxFit.fill,
                        )),
                    const SizedBox(
                      width: 4.0,
                    ),
                    Text(
                      "30 min",
                      style: kTextStyleSemiBoldBlack14,
                    ),
                    // const SizedBox(
                    //   width: 2.0,
                    // ),
                    // const Icon(
                    //   Icons.arrow_forward_ios_rounded,
                    //   size: 14.0,
                    //   color: ColorsCustom.grayHint,
                    // ),
                  ],
                ),
                const SizedBox(
                  height: 2.0,
                ),
                Text(
                  "Delivery time",
                  style: kTextStyleHintRegularGray12,
                )
              ],
            ),
          ),
          const SizedBox(
            width: 16.0,
          ),

          // third part ========================================================
          Container(
            width: MediaQuery.of(context).size.width / 4,
            padding:
                const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8.0),
                boxShadow: const [
                  BoxShadow(
                      color: Colors.black12,
                      offset: Offset(0, 2),
                      blurRadius: 10.0)
                ]),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Container(
                    //     width: 14.0,
                    //     height: 14.0,
                    //     child: SvgPicture.asset(
                    //       "assets/images/star_icon.svg",
                    //       fit: BoxFit.fill,
                    //     )),
                    // const SizedBox(
                    //   width: 4.0,
                    // ),
                    Text(
                      " ₹ 300",
                      style: kTextStyleSemiBoldBlack14,
                    ),
                    // const SizedBox(
                    //   width: 2.0,
                    // ),
                    // const Icon(
                    //   Icons.arrow_forward_ios_rounded,
                    //   size: 14.0,
                    //   color: ColorsCustom.grayHint,
                    // ),
                  ],
                ),
                const SizedBox(
                  height: 2.0,
                ),
                Text(
                  "Cost of 2",
                  style: kTextStyleHintRegularGray12,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
