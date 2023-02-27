import 'package:crisfood/const/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ChipUtil extends StatelessWidget {
  final String name;
  final String image;
  final Color color;
  const ChipUtil({
    required this.name,
    required this.image,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(4.0)),
      child: Row(children: [
        Container(
          width: 10.0,
          height: 10.0,
          child: SvgPicture.asset("assets/images/$image"),
        ),
        const SizedBox(
          width: 2.0,
        ),
        Text(name, style: kTextStyleRegularBlack10),
      ]),
    );
  }
}
