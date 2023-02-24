import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../const/colors.dart';

ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    appBarTheme: const AppBarTheme(
        elevation: 0,
        backgroundColor: ColorsCustom.backgroundGray,
        systemOverlayStyle: SystemUiOverlayStyle(
            statusBarIconBrightness: Brightness.dark,
            statusBarColor: ColorsCustom.backgroundGray)));

ThemeData darkTheme = ThemeData(brightness: Brightness.dark);
