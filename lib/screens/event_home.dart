
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:hexcolor/hexcolor.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../data/deals_list_item.dart';
import '../widgets/events_widget.dart';

class EventHome extends StatefulWidget {
  const EventHome({super.key});

  @override
  State<EventHome> createState() => _EventHomeState();
}

class _EventHomeState extends State<EventHome> {
  final PageController _pageViewController = PageController(initialPage: 0);

  @override
  void dispose() {
    _pageViewController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final responsiveHeight = MediaQuery.of(context).size.height;
    final responsiveWidth = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: HexColor('#000000'),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: const Padding(
          padding: EdgeInsets.only(left: 12.0),
          child: ImageIcon(
            AssetImage('assets/images/tclogo.png'),
            size: 90,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right:30.0),
            child: CircleAvatar(
              backgroundColor: HexColor('#000000'),
              radius: 20,
                
                backgroundImage: const AssetImage('assets/images/menufinal.png'),
              
            ),
          )
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: responsiveHeight * 0.030),
                Stack(alignment: Alignment.bottomCenter, children: [
                  Container(
                    height: 144.h,
                    width: responsiveWidth,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/restable.jpg"),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                        height: 64.h,
                        width:205.w,
                        decoration: BoxDecoration(
                            color: HexColor('#24282C'),
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(20),
                                bottomRight: Radius.circular(20))),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Reserve Table",
                                style: TextStyle(
                                    color: HexColor("#B8B8B8"),
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.normal,
                                    fontSize: 14.sp),
                              ),
                              SizedBox(
                                width: responsiveWidth * 0.01,
                              ),
                              Container(
                                height: 38.h,
                                width: 37.w,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: HexColor('#61FC6E')),
                                child: Center(
                                  child: Image.asset(
                                    "assets/images/Vector (11).png",
                                    fit: BoxFit.contain,
                                    height: responsiveHeight*0.020,
                                    width: 15,
                                    color: HexColor("#000000"),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )),
                  ),
                ]),
                Text(
                  "Events",
                  style: TextStyle(
                      color: HexColor("#FFFFFF"),
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                      fontSize: 30.sp),
                ),
                SizedBox(height: responsiveHeight * 0.015),
                const EventsWidget(),
                SizedBox(height: 15.h,),
                Text(
                  "Deals",
                  style: TextStyle(
                      color: HexColor("#FFFFFF"),
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                      fontSize: 30.sp),
                ),
                    SizedBox(height: 8.h,),
                Stack(children: [
                  SizedBox(
                    height: 198.h,
                    child: PageView.builder(
                        scrollDirection: Axis.horizontal,
                        controller: _pageViewController,
                        onPageChanged: (int page) {
                          setState(() {});
                        },
                        itemCount: listOfDealsWidget.length,
                        itemBuilder: (context, index) {
                          return listOfDealsWidget[
                              index % listOfDealsWidget.length];
                        }),
                  ),
                ]),
                SizedBox(height: responsiveHeight * 0.020),
                Container(
                  height: responsiveHeight * 0.030,
                  width: responsiveWidth,
                  color: Colors.transparent,
                  child: Center(
                    child: SmoothPageIndicator(
                      controller: _pageViewController,
                      count: listOfDealsWidget.length,
                      effect: ExpandingDotsEffect(
                        activeDotColor: HexColor("#60FA6D"),
                        dotColor: HexColor("#E1E1E1"),
                        dotHeight: 5,
                        dotWidth: 5,
                        spacing: 8,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: responsiveHeight * 0.015),
              ],
            ),
          ),
        ),
      ),
    );
  }

  int activePage = 0;
}
