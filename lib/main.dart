import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:travel_app/Splash_Screan/Splash_Screan.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context,orientation,devicetype) =>const MaterialApp(
      debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        home: Splash_Screan(),
      ),
    );
  }
}
