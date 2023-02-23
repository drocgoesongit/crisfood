import 'package:crisfood/const/colors.dart';
import 'package:crisfood/screens/check.dart';
import 'package:crisfood/screens/home_screen.dart';
import 'package:crisfood/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
        appBarTheme: const AppBarTheme(
            elevation: 0,
            backgroundColor: ColorsCustom.backgroundGray,
            systemOverlayStyle: SystemUiOverlayStyle(
                statusBarIconBrightness: Brightness.dark,
                statusBarColor: ColorsCustom.backgroundGray))),
    home: HomeScreen(),
  ));
}
