import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:travel_app/dashboard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (p0, p1, p2) => MaterialApp(
        title: 'Flutter Demo',
        home: ChooseHotel(),
      ),
    );
  }
}
