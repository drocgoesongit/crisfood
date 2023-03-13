import 'package:flutter/material.dart';

class CouponModel {
  final String couponName;
  final String couponCode;
  final String aboveMargin;

  const CouponModel(
      {required this.couponCode,
      required this.couponName,
      required this.aboveMargin});
}
