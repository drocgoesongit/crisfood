import 'package:crisfood/const/colors.dart';
import 'package:crisfood/const/constant.dart';
import 'package:crisfood/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [ColorsCustom.yellowDark, ColorsCustom.yellowBright]),
            color: ColorsCustom.yellowBright),
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset("assets/images/splash_screen_main.svg"),
            const SizedBox(
              height: 48.0,
            ),
            Container(
                margin: const EdgeInsets.symmetric(horizontal: 24.0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12.0)),
                height: 56.0,
                child: Center(
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 16.0,
                      ),
                      Text(
                        "+91",
                        style: kTextStyleRegularBlack16,
                      ),
                      const SizedBox(
                        width: 16.0,
                      ),
                      Expanded(
                        child: TextField(
                          cursorColor: Colors.black,
                          autofocus: true,
                          style: kTextStyleRegularBlack16,
                          decoration: InputDecoration.collapsed(
                              hintText: "7249XXXXXX", border: InputBorder.none),
                        ),
                      )
                    ],
                  ),
                )),
            const SizedBox(
              height: 16.0,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomeScreen(),
                    ));
              }, // this is
              child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 24.0),
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(12.0)),
                  height: 56.0,
                  child: const Center(
                    child: Text(
                      "Send OTP",
                      style: kTextStyleSemiBoldWhite16,
                    ),
                  )),
            )
          ],
        )),
      ),
    );
  }
}
