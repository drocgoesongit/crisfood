import 'package:crisfood/const/colors.dart';
import 'package:crisfood/const/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CouponListForRestaurant extends StatelessWidget {
  final String couponName;
  final String couponCode;
  final String aboveMargin;

  const CouponListForRestaurant(
      {super.key,
      required this.couponCode,
      required this.couponName,
      required this.aboveMargin});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        color: Colors.white,
        border: Border.all(color: ColorsCustom.grayHint, width: 0.5),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 8.0),
        child: Column(children: [
          Row(
            children: [
              SvgPicture.asset("assets/images/percentage.svg"),
              SizedBox(
                width: 10.0,
              ),
              Text(
                couponName,
                style: kTextStyleSemiBoldBlack14,
              ),
              Expanded(child: Container()),
              SvgPicture.asset("assets/images/copy_icon.svg"),
            ],
          ), // First row
          SizedBox(
            height: 10.0,
          ),
          Text(
            "Use ${couponCode} Above ${aboveMargin}",
            style: kTextStyleRegularBlack14,
          )
        ]),
      ),
    );
  }
}