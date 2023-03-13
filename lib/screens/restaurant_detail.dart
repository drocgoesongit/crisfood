import 'package:crisfood/const/colors.dart';
import 'package:crisfood/const/constant.dart';
import 'package:crisfood/models/coupon_model.dart';
import 'package:crisfood/utils/dotted_divider.dart';
import 'package:crisfood/utils/restaurant_screen_properties_chip.dart';
import 'package:crisfood/utils/restaurant_specific_coupouns_list.dart';
import 'package:crisfood/viewmodels/restaurant_screen_viewmodels.dart';
import 'package:flutter/material.dart';

class RestaurantDetailScreen extends StatelessWidget {
  RestaurantDetailScreen({super.key});

  List<CouponModel> couponList = RestaurantDetailViewModel().getCouponList();

  void searchTapped(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
      content: Text("Search icon clicked."),
      duration: Duration(seconds: 2),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            actions: [
              GestureDetector(
                  onTap: () => searchTapped(context),
                  child: const Icon(
                    Icons.search,
                  ))
            ],
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              // header part containing name of the restaurant and etc. ==============================
              Text(
                "Restaurant Name",
                style: kTextStyleSemiBoldBlack16,
              ),
              const SizedBox(
                height: 12.0,
              ),
              Text(
                "dishes",
                style: kTextStyleRegularBlack16,
              ),
              const SizedBox(
                height: 6.0,
              ),
              Text(
                "address",
                style: kTextStyleHintRegularGray14,
              ),
              const SizedBox(
                height: 12.0,
              ),
              // divider

              // Properties of that restaurant part ==============================
              const MySeparator(
                color: ColorsCustom.grayHint,
              ),

              const RestaurantScreenPropertiesChip(
                  rating: "4.0", ratingText: "Very highly rated"),

              const MySeparator(
                color: ColorsCustom.grayHint,
              ),

              // Coupon list part ================================================
              const SizedBox(
                height: 16.0,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height *
                    0.09, // specify the height of the horizontal ListView
                child: Scrollbar(
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: couponList.length,
                    itemBuilder: (context, index) {
                      return Row(
                        children: [
                          CouponListForRestaurant(
                              couponCode: couponList[index].couponCode,
                              couponName: couponList[index].couponName,
                              aboveMargin: couponList[index].aboveMargin),
                          const SizedBox(
                            width: 10.0,
                          )
                        ],
                      );
                    },
                  ),
                ),
              ),

              const SizedBox(
                height: 16.0,
              ),

              // //Tab Controller part =============================================
              // DefaultTabController(
              //   length: 2,
              //   child: Scaffold(
              //     appBar: AppBar(
              //       bottom: TabBar(
              //         tabs: [
              //           Tab(icon: Icon(Icons.contacts), text: "Tab 1"),
              //           Tab(icon: Icon(Icons.camera_alt), text: "Tab 2")
              //         ],
              //       ),
              //     ),
              //     body: TabBarView(
              //       children: [Text("First screen."), Text("Second Screen")],
              //     ),
              //   ),
              // ),
            ]),
          ),
        ),
      ),
    );
  }
}
