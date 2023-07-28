import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'screens/event_home.dart';

void main() {
  runApp(const EventApp());
}

class EventApp extends StatelessWidget {
  const EventApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(428, 1123),
        minTextAdapt: true,
        builder: (context, widget) {
          return const MaterialApp(
            
            title: 'Event App',
            debugShowCheckedModeBanner: false,
        
                  home: EventHome()
                  
           
          );
        });
  }
}
