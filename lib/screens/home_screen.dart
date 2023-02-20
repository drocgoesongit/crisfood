import 'package:crisfood/const/colors.dart';
import 'package:crisfood/const/constant.dart';
import 'package:crisfood/models/popular_cuisine_model.dart';
import 'package:crisfood/utils/home_screen_popular_cuisine_card.dart';
import 'package:crisfood/viewmodels/home_screen_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final listOfPopularCuisine = HomeScreenViewModel().getPopularCuisineList();

  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height / 100;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const SizedBox(
                height: 8.0,
              ),

              // top address bar ---------
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset(
                              "assets/images/red_location_icon.svg"),
                          const SizedBox(
                            width: 6.0,
                          ),
                          Text(
                            "Home",
                            style: kTextStyleTitleBoldBlack20,
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 0.0,
                      ),
                      const Text(
                        "Majhewada, rd never going, bhiwandi",
                        style: kTextStyleHintRegularGray16,
                      )
                    ],
                  ),
                  // Expanded(
                  //   child: Container(),
                  // ),
                  SvgPicture.asset("assets/images/search_icon.svg")
                ],
              ),

              // Carousel ------
              const SizedBox(
                height: 26.0,
              ),
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height / 4,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    gradient: const LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [Colors.blue, Colors.red])),
              ),

              // popular cuisines -------
              const SizedBox(
                height: 20.0,
              ),

              Text(
                "Popular cuisines around you",
                style: kTextStyleRegularBlack14,
              ),

              SizedBox(
                height: height * 2,
              ),
              GridView.count(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                crossAxisCount: 4,
                childAspectRatio: 0.7,
                // scrollDirection: Axis.horizontal,
                children: listOfPopularCuisine
                    .map((e) => PopularCuisineCard(
                        imagePath: e.imagePath, name: e.name))
                    .toList(),
              ),
              SizedBox(
                height: height * 1,
              ),
              Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  height: 26.0,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: ColorsCustom.grayHint,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(4.0)),
                  child: Center(
                    child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Container(),
                          ),
                          const Text("See More ",
                              style: kTextStyleRegularBlack10),
                          Icon(Icons.arrow_drop_down_sharp),
                          Expanded(
                            child: Container(),
                          )
                        ]),
                  ))
            ]),
          ),
        ),
      ),
    );
  }
}
