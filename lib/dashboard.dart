import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:travel_app/Hotel_List.dart';
import 'package:travel_app/bottom.dart';
import 'package:travel_app/bottom_navigation.dart';
import 'package:travel_app/travel_list.dart';

class ChooseHotel extends StatefulWidget {
  const ChooseHotel({super.key});

  @override
  State<ChooseHotel> createState() => _ChooseHotelState();
}

class _ChooseHotelState extends State<ChooseHotel> {
  @override
  Widget build(BuildContext context) {
    final List<String> tabs = [
      'Location',
      'Hotels',
      'Food',
      'Adventure',
      'Activities'
    ];
    String selectedTab = 'Location';
    final List<Map<String, dynamic>> hotels = [
      {
        'name': 'Alley Palace',
        'rating': '4.1 ',
        'image': 'assets/photos/Group1.png'
      },
      {
        'name': 'Ocean View',
        'rating': '4.5 ',
        'image': 'assets/photos/image2.jpg'
      },
      {
        'name': 'Mountain Escape',
        'rating': '4.8 ',
        'image': 'assets/photos/image1.jpg'
      },
    ];
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: HomeScreen(),
      body: Padding(padding:const EdgeInsets.fromLTRB(20, 40, 20, 0),
        child: SingleChildScrollView(
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            const BottomPart(),
            SizedBox(height: 2.h),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Find things to do',
                fillColor: const Color(0xffA8CCF0).withOpacity(.2),
                filled: true,
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(24),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 32, 0, 0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: tabs.map(
                      (e) {
                        final bool isSelected = selectedTab == e;
                        return GestureDetector(
                          onTap: () {},
                          child: Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 16, vertical: 8),
                              decoration: BoxDecoration(
                                color: isSelected
                                    ? Colors.blue.withOpacity(0.1)
                                    : Colors.transparent,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Text(
                                e,
                                style: TextStyle(
                                  color: isSelected ? Colors.blue : Colors.grey,
                                  fontWeight: isSelected
                                      ? FontWeight.bold
                                      : FontWeight.normal,
                                  fontSize: 16,
                                ),
                              )),
                        );
                      },
                    ).toList()),
              ),
            ),
            SizedBox(
              height: 1.24.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Text(
                  'Popular',
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'Montserrat',
                  ),
                ),
                const Spacer(),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'See All',
                    style: TextStyle(
                        fontSize: 12,
                        fontFamily: 'circularxx',
                        color: Color(0xff176FF2)),
                  ),
                ),
              ],
            ),
            SizedBox(
                height: 29.5.h,
                width: double.infinity,
                child: ChooseHote(hotels: hotels)),
            SizedBox(
              height: 2.46.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Recommended',
                  style: TextStyle(fontFamily: 'Montserrat', fontSize: 2.21.h),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
                height: 21.4.h,
                width: double.infinity,
                child: const TravelListScreen()),
          ]),
        ),
      ),
    );
  }
}
