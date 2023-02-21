import 'package:crisfood/const/colors.dart';
import 'package:crisfood/const/constant.dart';
import 'package:crisfood/models/popular_cuisine_model.dart';
import 'package:crisfood/utils/home_screen_offers_card.dart';
import 'package:crisfood/utils/home_screen_popular_cuisine_card.dart';
import 'package:crisfood/utils/home_screen_restaurant_around_you.dart';
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
  final listOfOffersAroundYou = HomeScreenViewModel().getOffersAroundYou();

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
      backgroundColor: ColorsCustom.backgroundGray,
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
                          const Text(
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
                  Expanded(
                    child: Container(),
                  ),
                  SvgPicture.asset("assets/images/search_icon.svg")
                ],
              ),

              // Carousel ------
              const SizedBox(
                height: 26.0,
              ),

              // checking.
              RestaurantAroundYouCard(
                  imageName: "dalvi_hotel.png",
                  name: "Abdul Wahab Dalvi",
                  description: "Sweets & Farsan",
                  address: "Mumbra station.",
                  tag: "popular",
                  rating: "4.0",
                  duration: "30",
                  special: "₹250 for two"),

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
                style: kTextStyleSemiBoldBlack14,
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
                  )),

              // top offers around you section -------------------
              const SizedBox(
                height: 20.0,
              ),

              const Text(
                "Top offers around you",
                style: kTextStyleSemiBoldBlack14,
              ),

              const SizedBox(
                height: 16.0,
              ),

              Container(
                width: double.infinity,
                height: 120.0,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: listOfOffersAroundYou
                      .map((e) =>
                          OffersCardHomeScreen(image: e.image, name: e.name))
                      .toList(),
                ),
              ),

              //restaurant around you section ---------------
              const SizedBox(
                height: 20.0,
              ),

              const Text(
                "123 Restaurants around you",
                style: kTextStyleSemiBoldBlack14,
              ),

              const SizedBox(
                height: 16.0,
              ),

              // ListView(
              //   children: ,
              // )
            ]),
          ),
        ),
      ),
    );
  }
}
