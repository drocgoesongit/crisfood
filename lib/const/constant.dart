import 'package:crisfood/const/colors.dart';
import 'package:crisfood/theme/theme_manager.dart';
import 'package:flutter/material.dart';

ThemeManager themeManager = ThemeManager();

final kTextStyleHintRegularGray16 = TextStyle(
  fontSize: 16.0,
  color: themeManager.themeMode == ThemeMode.light
      ? ColorsCustom.grayHint
      : Colors.white54,
  fontFamily: "Figtree",
);

final kTextStyleHintRegularGray14 = TextStyle(
  fontSize: 14.0,
  color: themeManager.themeMode == ThemeMode.light
      ? ColorsCustom.grayHint
      : Colors.white54,
  fontFamily: "Figtree",
);

const kTextStyleSemiBoldWhite16 = TextStyle(
  fontSize: 16.0,
  fontWeight: FontWeight.w600,
  color: Colors.white70,
  fontFamily: "Figtree",
);

final kTextStyleSemiBoldBlack16 = TextStyle(
  fontSize: 16.0,
  fontWeight: FontWeight.w600,
  color:
      themeManager.themeMode == ThemeMode.light ? Colors.black : Colors.white70,
  fontFamily: "Figtree",
);

final kTextStyleSemiBoldBlack14 = TextStyle(
  fontSize: 14.0,
  color:
      themeManager.themeMode == ThemeMode.light ? Colors.black : Colors.white70,
  fontWeight: FontWeight.w600,
  fontFamily: "Figtree",
);

final kTextStyleRegularBlack16 = TextStyle(
  fontSize: 16.0,
  color: themeManager.themeMode == ThemeMode.light
      ? ColorsCustom.grayHint
      : Colors.white70,
  fontFamily: "Figtree",
);

const kTextStyleRegularBlack10 = TextStyle(
  fontSize: 10.0,
  color: Colors.black,
  fontFamily: "Figtree",
);

const kTextStyleTitleBoldBlack20 = TextStyle(
  fontFamily: "Figtree",
  fontSize: 20.0,
  color: Colors.black,
  fontWeight: FontWeight.w700,
);

const kTextStyleRegularBlack14 = TextStyle(
  fontSize: 14.0,
  color: Colors.black,
  fontFamily: "Figtree",
);
