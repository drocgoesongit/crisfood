import 'package:crisfood/theme/theme_manager.dart';
import 'package:flutter/material.dart';

ThemeManager manager = ThemeManager();

class ColorsCustom {
  static const yellowDark = Color(0xFFFFBF29);
  static const yellowBright = Color(0xFFFFCC29);
  static const grayHint = Color(0xFF858585);
  static const starOrange = Color(0xFFFDF6D5);
  static const durationGreen = Color(0xFFE3F9E4);
  final backgroundGray =
      (manager.themeMode == ThemeMode.dark) ? Colors.grey : Color(0xFFF8F8F8);
  static const pinkAccentColor = Color(0xFFF05C5C);
}
