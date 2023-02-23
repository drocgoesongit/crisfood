import 'package:crisfood/screens/home_screen.dart';
import 'package:flutter/material.dart';

// Stateful widget is required to add the splash screen functionality.
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  // init state that is called at the beginning of this file so it can call timer function..
  @override
  void initState() {
    super.initState();
    timer();
  }

  // timer function that execute itself after 2 second and navigates to FirstScreen. function type is future.
  Future timer() {
    final time = Future.delayed(Duration(seconds: 2), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => HomeScreen()));
    });
    return time;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(
                Icons.api_rounded,
                color: Colors.black,
                size: 40.0,
              ),
              SizedBox(
                height: 20.0,
              ),
              Text("Splash screen")
            ]),
      ),
    );
  }
}
