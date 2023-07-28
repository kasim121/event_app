import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';

import '../screens/event_home_details.dart';

class DealsWidget extends StatelessWidget {
  const DealsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final responsiveHeight = MediaQuery.of(context).size.height;
    final responsiveWidth = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 8.0,
      ),
      child: Container(
        width: responsiveWidth,
        height: 198.h,
        decoration: BoxDecoration(
          color: HexColor("#24282C"),
          borderRadius: const BorderRadius.all(Radius.circular(20)),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 6),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 4.0),
                    child: Container(
                      height: 119.h,
                      width: 119.w,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/images/dealsimage.jpg"),
                            fit: BoxFit.fill),
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                      ),
                    ),
                  ),
                  SizedBox(width: responsiveWidth * 0.008),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        softWrap: false,
                        "Free Triple Crust On",
                        style: TextStyle(
                            overflow: TextOverflow.ellipsis,
                            color: HexColor("#FFFFFF"),
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            fontSize: 20.sp),
                      ),
                      SizedBox(height: responsiveHeight * 0.004),
                      Row(
                        children: [
                          ImageIcon(
                            const AssetImage("assets/images/Vector (13).png"),
                            color: HexColor('#FFFFFF'),
                            size: 15,
                          ),
                          SizedBox(width: responsiveWidth * 0.009),
                          Text(
                            "Mon tue wed",
                            style: TextStyle(
                                color: HexColor("#B8B8B8"),
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.normal,
                                fontSize: 14.sp),
                          ),
                        ],
                      ),
                           SizedBox(height: 8.h,),
                      Row(
                        children: [
                          ImageIcon(
                            const AssetImage("assets/images/Vector (19).png"),
                            color: HexColor('#FFFFFF'),
                            size: 15,
                          ),
                          SizedBox(width: responsiveWidth * 0.009),
                          Text(
                            "3pm - 7pm",
                            style: TextStyle(
                                color: HexColor("#FFFFFF"),
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.normal,
                                fontSize: 16.sp),
                          ),
                        ],
                      ),

                      //
                    ],
                  ),
                ],
              ),
              SizedBox(height: 4.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 40.0),
                    child: Row(
                      children: [
                        Text(
                          '16,000',
                          style: TextStyle(
                              decoration: TextDecoration.lineThrough,
                              color: HexColor("#B8B8B8"),
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.normal,
                              fontSize: 20.sp),
                        ),
                        SizedBox(width: responsiveWidth * 0.012),
                        Text(
                          '12,289',
                          style: TextStyle(
                              color: HexColor("#FFFFFF"),
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              fontSize: 28.sp),
                        ),
                      ],
                    ),
                  ),

                  //

                   SizedBox(
                                      width: 93.w,
                                      height: 40.h,
                                      child: ElevatedButton(
                                        onPressed: () {
                                          if (kDebugMode) {
                                            print("buy  button pressed inside deals !");
                                          }
                                       
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
    );
  }
}
