import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';

import '../data/expansion_list_items.dart';

class ExpandableWidget extends StatefulWidget {
  const ExpandableWidget({super.key});

  @override
  State<ExpandableWidget> createState() => _ExpandableWidgetState();
}

class _ExpandableWidgetState extends State<ExpandableWidget> {
  int selected = 0;

  @override
  Widget build(BuildContext context) {
    final responsiveHeight = MediaQuery.of(context).size.height;
    return SizedBox(
      height: responsiveHeight * 0.25,
      child: ListView.builder(
          key: Key('value ${selected.toString()}'),
          itemCount: listOfExapnsionHeader.length,
          itemBuilder: (context, index) {
            return ListTileTheme(
              contentPadding: EdgeInsets.zero,
              dense: true,
              horizontalTitleGap: 0,
              minLeadingWidth: 0,
              minVerticalPadding: 0,
              child: ExpansionTile(
                key: Key(index.toString()),
                initiallyExpanded: index == selected,
                onExpansionChanged: (bool expanded) {
                  if (expanded) {
                    setState(() {
                      selected = index;
                    });
                  } else {
                    setState(() {
                      selected = -1;
                    });
                  }
                },
                title: Text(
                  listOfExapnsionHeader[index].headerName.toString(),
                  style: TextStyle(
                      color: HexColor("#DFDFDF"),
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.normal,
                      fontSize: 15.sp),
                ),
                trailing: selected == index
                    ? Icon(Icons.remove, color: HexColor("#DFDFDF"),size: 26.h,)
                    : Icon(Icons.add, color: HexColor("#DFDFDF")),
                children: [
                  Text(
                    listOfExapnsionHeader[index].textDetails.toString(),
                    style: TextStyle(
                        color: HexColor("#C0C0C0"),
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.normal,
                        fontSize: 16.sp),
                  ),
                ],
              ),
            );
          }),
    );
  }
}
