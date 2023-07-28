import 'package:eventapp/screens/event_home_details.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';

import '../data/events_list_item.dart';

class EventsWidget extends StatelessWidget {
  const EventsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final responsiveHeight = MediaQuery.of(context).size.height;
    final responsiveWidth = MediaQuery.of(context).size.height;
    return SizedBox(
       height: 570.h,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: listOfEventsWidget.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: SizedBox(
                height: 570.h,
                width:  345.w,
                child: Stack(
                  alignment: Alignment.topRight,
                  children: [
                    Container(
                      
                    height: 465.h,
                width:  343.w,
                      decoration: const BoxDecoration(
                        color: Colors.green,
                        image: DecorationImage(
                            image: AssetImage("assets/images/Moksha.jpg"),
                            fit: BoxFit.fill),
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                    ),
                    Positioned(
                      bottom: -4,
                      left: 10,
                      right: 10,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal:2.0,vertical: 8),
                        child: Container(
                          height: 198.h,
                width:  322.w,
                          decoration: BoxDecoration(
                            color: HexColor("#24282C"),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(21)),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10.0, vertical: 6),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Tuesday Night Live - Ft Band Moksha",
                                  style: TextStyle(
                                      color: HexColor("#FFFFFF"),
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500,
                                      fontSize: 20.sp),
                                ),
                                 SizedBox(height: 6.h,),
                                // ListTile(
                                //   contentPadding: const EdgeInsets.only(
                                //       left: 0.0, right: 0.0),
                                //   leading: 
                                  Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Container(
                                        height: 46.h,
                                        width: 46.w,
                                        decoration: BoxDecoration(
                                         
                                          color:HexColor("#000000"),
                                          borderRadius: const BorderRadius.all(
                                            Radius.circular(20),
                                          ),
                                          border: Border.all(
                                              width: 1.0,
                                              color: HexColor("#5C5C5C")),
                                        ),
                                        child: Center(
                                          child: Image.asset(
                                            "assets/images/Vector (13).png",
                                            height: 21.h,
                                            fit: BoxFit.fill,
                                            color: HexColor("#FFFFFF"),
                                          ),
                                        ),
                                      ),
                                SizedBox(width: 10.w,),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
 Text(
                                    "13 Jan, Fri",
                                    style: TextStyle(
                                        color: HexColor("#FFFFFF"),
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.normal,
                                        fontSize: 16.sp),
                                  ),
                                    Text(
                                    "8pm Onwards",
                                    style: TextStyle(
                                        color: HexColor("#B8B8B8"),
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.normal,
                                        fontSize: 14.sp),
                                  ),
                               
                                    ],
                                   )
                                    ],
                                  ),
                                 // title: 
                                 
                                 // subtitle: 
                               
                                //),
                                SizedBox(height: 8.h,),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    SizedBox(
                                      width: 76.w,
                                      height: 27.h,
                                      child: ElevatedButton(
                                        onPressed: () {},
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: HexColor("#224825"),
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(
                                                20), // <-- Radius
                                          ),
                                        ),
                                        child: Text(
                                          'Techno',
                                          style: TextStyle(
                                              color: HexColor("#FFFFFF"),
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.normal,
                                              fontSize: 10.sp),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 93.w,
                                      height: 40.h,
                                      child: ElevatedButton(
                                        onPressed: () {
                                          if (kDebugMode) {
                                            print("buy button pressed inside events !");
                                          }
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const EventHomeDetails()));
                                        },
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: HexColor("#61EF6C"),
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(
                                                58), // <-- Radius
                                          ),
                                        ),
                                        child: Text('BUY',
                                            style: TextStyle(
                                              color: HexColor("#000000"),
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w500,
                                              fontSize: 14.sp,
                                            )),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
