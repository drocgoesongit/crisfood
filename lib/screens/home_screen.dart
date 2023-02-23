import 'package:carousel_slider/carousel_slider.dart';
import 'package:crisfood/const/colors.dart';
import 'package:crisfood/const/constant.dart';
import 'package:crisfood/screens/search_screen.dart';
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
  final restaurantList = HomeScreenViewModel().getRestaurantAroundYouList();
  final bannerImageList = HomeScreenViewModel().getCarouselImageList();
  var _selectedIndex = 1;
  var _isExtraCuisineVisible = false;

  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _makeExtraCuisineVisible(bool currentState) {
    setState(() {
      _isExtraCuisineVisible = !currentState;
    });
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height / 100;

    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: SvgPicture.asset("assets/images/home_icon.svg"),
                label: "Home"),
            BottomNavigationBarItem(
                icon: SvgPicture.asset("assets/images/search_icon_bottom.svg"),
                label: "Search"),
            BottomNavigationBarItem(
                icon: SvgPicture.asset("assets/images/cart_icon.svg"),
                label: "Cart"),
            BottomNavigationBarItem(
                icon: SvgPicture.asset("assets/images/profile_icon.svg"),
                label: "Home"),
          ],
          type: BottomNavigationBarType.shifting,
          currentIndex: _selectedIndex,
          selectedItemColor: ColorsCustom.pinkAccentColor,
          iconSize: 40,
          showUnselectedLabels: true,
          selectedLabelStyle: const TextStyle(
              fontFamily: "Figtree",
              fontSize: 14.0,
              color: ColorsCustom.pinkAccentColor),
          unselectedLabelStyle: const TextStyle(
              fontFamily: "Figtree",
              fontSize: 14.0,
              color: ColorsCustom.grayHint),
          unselectedFontSize: 14.0,
          onTap: _onItemTapped,
          elevation: 5),

      // appbar
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    SvgPicture.asset("assets/images/red_location_icon.svg"),
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
            IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SplashScreen()));
                },
                icon: SvgPicture.asset("assets/images/search_icon.svg"))
          ],
        ),
      ),

      backgroundColor: ColorsCustom.backgroundGray,

      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Carousel part ------
              const SizedBox(
                height: 26.0,
              ),

              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height / 4,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: CarouselSlider(
                  options: CarouselOptions(
                      autoPlay: true,
                      enlargeCenterPage: true,
                      viewportFraction: 0.85),
                  items: bannerImageList
                      .map((e) => ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.asset(
                            e.imagePath,
                            fit: BoxFit.fill,
                          )))
                      .toList(),
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // popular cuisines -------
                      const SizedBox(
                        height: 20.0,
                      ),

                      const Text(
                        "Popular cuisines around you",
                        style: kTextStyleSemiBoldBlack16,
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
                      Visibility(
                        visible: _isExtraCuisineVisible,
                        child: GridView.count(
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
                      ),
                      SizedBox(
                        height: height * 1,
                      ),
                      GestureDetector(
                        onTap: () {
                          _makeExtraCuisineVisible(_isExtraCuisineVisible);
                        },
                        child: Container(
                            alignment: Alignment.center,
                            width: double.infinity,
                            padding: EdgeInsets.all(2.0),
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: ColorsCustom.grayHint,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(4.0)),
                            child: Center(
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                        _isExtraCuisineVisible
                                            ? "See less"
                                            : "See more",
                                        style: kTextStyleRegularBlack14),
                                    const Icon(Icons.arrow_drop_down_sharp),
                                  ]),
                            )),
                      ),

                      // top offers around you section -------------------
                      const SizedBox(
                        height: 20.0,
                      ),

                      const Text(
                        "Top offers around you",
                        style: kTextStyleSemiBoldBlack16,
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
                              .map((e) => OffersCardHomeScreen(
                                  image: e.image, name: e.name))
                              .toList(),
                        ),
                      ),

                      //restaurant around you section ---------------
                      const SizedBox(
                        height: 20.0,
                      ),

                      const Text(
                        "123 Restaurants around you",
                        style: kTextStyleSemiBoldBlack16,
                      ),

                      const SizedBox(
                        height: 16.0,
                      ),
                    ]),
              ),

              // restaurant list without padding. ---------
              ListView(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                children: restaurantList
                    .map((e) => RestaurantAroundYouCard(
                        imageName: e.imageName,
                        name: e.name,
                        description: e.description,
                        address: e.address,
                        tag: e.tag,
                        rating: e.rating,
                        duration: e.duration,
                        special: e.special))
                    .toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
