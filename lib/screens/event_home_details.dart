import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:hexcolor/hexcolor.dart';

import '../data/lineup_item_list.dart';
import '../widgets/expansiontile_widget.dart';

class EventHomeDetails extends StatefulWidget {
  const EventHomeDetails({super.key});

  @override
  State<EventHomeDetails> createState() => _EventHomeDetailsState();
}

class _EventHomeDetailsState extends State<EventHomeDetails> {
  @override
  Widget build(BuildContext context) {
    final responsiveHeight = MediaQuery.of(context).size.height;
    final responsiveWidth = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: HexColor('#000000'),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Padding(
          padding: const EdgeInsets.only(left: 12.0),
          child: InkWell(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: const ImageIcon(
              AssetImage('assets/images/backarrow.png'),
              size: 90,
            ),
          ),
        ),
        title: Text(
          "Saturday Nights With Reetu",
          style: TextStyle(
              color: HexColor("#FFFFFF"),
              fontFamily: 'Poppins',
              fontWeight: FontWeight.bold,
              fontSize: 20.sp),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 398.h,
                  width: 397.w,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/kothari.jpg"),
                        fit: BoxFit.fill),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                ),
                SizedBox(height: responsiveHeight * 0.020),
                Text(
                  "Saturday Nights With Reetu Kothari",
                  style: TextStyle(
                      color: HexColor("#F6F6F6"),
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                      fontSize: 26.sp),
                ),
                SizedBox(height: responsiveHeight * 0.015),
                Text(
                  "Psy Trance",
                  style: TextStyle(
                      color: HexColor("#61FC6E"),
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.normal,
                      fontSize: 14.sp),
                ),
                SizedBox(height: responsiveHeight * 0.010),
                Divider(
                  color: HexColor("#343434"),
                  thickness: 1.0,
                ),

                MediaQuery(
                  data: const MediaQueryData(padding: EdgeInsets.zero),
                  child: ListTile(
                    contentPadding:
                        const EdgeInsets.only(left: 0.0, right: 0.0),
                    title: Padding(
                      padding: const EdgeInsets.only(bottom: 5.0),
                      child: Text(
                        "Fri 13 Jan, 2023 - Thu 19 Jan",
                        style: TextStyle(
                            color: HexColor("#F6F6F6"),
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.normal,
                            fontSize: 18.sp),
                      ),
                    ),
                    subtitle: Text(
                      "18:00 Hrs Onwards",
                      style: TextStyle(
                          color: HexColor("#C0C0C0"),
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.normal,
                          fontSize: 18.sp),
                    ),
                    trailing: Column(
                      children: [
                        Text(
                          "*For Ages",
                          style: TextStyle(
                              color: HexColor("#C0C0C0"),
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.normal,
                              fontSize: 10.sp),
                        ),
                        Text(
                          "21+",
                          style: TextStyle(
                              color: HexColor("#61FC6E"),
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                              fontSize: 25.sp),
                        ),
                      ],
                    ),
                  ),
                ),

                Divider(
                  color: HexColor("#343434"),
                  thickness: 1.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(
                          width: responsiveWidth * 0.25,
                          height: responsiveHeight * 0.035,
                          child: Text(
                            softWrap: false,
                            "HOSTED BY",
                            style: TextStyle(
                                overflow: TextOverflow.ellipsis,
                                color: HexColor("#FFFFFF"),
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.normal,
                                fontSize: 15.sp),
                          ),
                        ),
                        Text(
                          "Tandav Events",
                          style: TextStyle(
                              color: HexColor("#61FC6E"),
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.normal,
                              fontSize: 18.sp),
                        ),
                        SizedBox(height: responsiveHeight * 0.009),

                        Row(
                          children: [
                            ImageIcon(
                              const AssetImage("assets/images/Vector (20).png"),
                              color: HexColor('#FFFFFF'),
                              size: 15.h,
                            ),
                            SizedBox(width: responsiveWidth * 0.009),
                            Text(
                              "Dream Beach, Vagator",
                              style: TextStyle(
                                  color: HexColor("#B8B8B8"),
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.normal,
                                  fontSize: 14.sp),
                            ),
                          ],
                        ),
                        // SizedBox(height: responsiveHeight * 0.001),
                        // Row(
                        //   children: [
                        //     ImageIcon(
                        //       const AssetImage("assets/images/watch.png"),
                        //       color: HexColor('#FFFFFF'),
                        //       size: 15,
                        //     ),
                        //     SizedBox(width: responsiveWidth * 0.009),
                        //     Text(
                        //       "3pm - 7pm",
                        //       style: TextStyle(
                        //           color: HexColor("#FFFFFF"),
                        //           fontFamily: 'Poppins',
                        //           fontWeight: FontWeight.normal,
                        //           fontSize: 16),
                        //     ),
                        //   ],
                        // ),

                        //
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 4.0),
                      child: Container(
                        height: 70.h,
                        width: 70.h,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/images/map.jpg"),
                              fit: BoxFit.fill),
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        child: Center(
                          child: Image.asset(
                            "assets/images/mark.png",
                            fit: BoxFit.fill,
                            height: 29.h,
                            color: HexColor("#61FC6E"),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: responsiveHeight * 0.010),
                Divider(
                  color: HexColor("#343434"),
                  thickness: 1.0,
                ),
                Text(
                  "LINE UP",
                  style: TextStyle(
                      color: HexColor("#DFDFDF"),
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.normal,
                      fontSize: 15.sp),
                ),
                //
                SizedBox(
                  height: 64.h,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: listLinupNames.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 8.0, top: 8),
                        child: Container(
                          width: 104.w,
                          decoration: BoxDecoration(
                            color: HexColor("#000000E0"),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(10),
                            ),
                            border: Border.all(
                                width: 1.0, color: HexColor("#3F3E46")),
                          ),
                          child: Center(
                              child: Text(
                            listLinupNames[index].toString(),
                            style: TextStyle(
                                color: HexColor(
                                  "#FFFFFF",
                                ),
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.normal,
                                fontSize: 14.sp),
                          )),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: responsiveHeight * 0.015,
                ),
                Divider(
                  color: HexColor("#343434"),
                  thickness: 1.0,
                ),
                const ExpandableWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
