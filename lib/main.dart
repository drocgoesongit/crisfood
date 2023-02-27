import 'package:crisfood/const/colors.dart';
import 'package:crisfood/screens/check.dart';
import 'package:crisfood/screens/home_screen.dart';
import 'package:crisfood/screens/splash_screen.dart';
import 'package:crisfood/theme/theme_constants.dart';
import 'package:crisfood/theme/theme_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

ThemeManager themeManager = ThemeManager();
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: lightTheme,
    darkTheme: darkTheme,
    themeMode: themeManager.themeMode,
    home: HomeScreen(),
  ));
}
