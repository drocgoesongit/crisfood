import 'package:crisfood/const/colors.dart';
import 'package:crisfood/screens/check.dart';
import 'package:crisfood/screens/home_screen.dart';
import 'package:crisfood/screens/splash_screen.dart';
import 'package:crisfood/theme/theme_constants.dart';
import 'package:crisfood/theme/theme_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

ThemeManager themeManager = ThemeManager();

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void dispose() {
    themeManager.removeListener(() {
      themeListener();
    });
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    themeManager.addListener(() {
      themeListener();
    });
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
  }

  themeListener() {
    if (mounted) {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Crisfood",
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: themeManager.themeMode,
      home: HomeScreen(),
    );
  }
}
