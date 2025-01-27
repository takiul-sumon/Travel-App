import 'package:flutter/material.dart';
import 'package:travel_app/bottom.dart';

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

    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 44),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            BottomPart(), const SizedBox(height: 20),
            // Search Bar
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
            const SizedBox(
              height: 32,
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
                const Spacer(), // Adjusts spacing dynamically
                TextButton(
                  onPressed: () {},
                  style: const ButtonStyle(),
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
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                
                      height: 240,
                      width: 188,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/photos/Group1.png'),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(24)),
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            bottom: 16,
                            left: 16,
                            right: 16,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                // Palace Info
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 8,
                                        vertical: 4,
                                      ),
                                      decoration: BoxDecoration(
                                        color: Color(0xff4D5652),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: const Text(
                                        'Alley Palace',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 4),
                                    Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 8,
                                        vertical: 4,
                                      ),
                                      decoration: BoxDecoration(
                                        color: Color(0xff4D5652),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: const Text(
                                        '4.1 ★',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                IconButton(
                                  onPressed: () {},
                                  padding: const EdgeInsets.all(8),
                                  style: ButtonStyle(
                                      shape:const WidgetStatePropertyAll<OutlinedBorder>(
                                        CircleBorder(),
                                      ),
                                      backgroundColor:
                                          MaterialStateProperty.all<Color>(
                                              Colors.white)),
                                  icon: const Icon(
                                    Icons.favorite,
                                    color: Colors.red,
                                    size: 20,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  
                  Container(
                      height: 240,
                      width: 188,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/photos/image2.png'),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(24)),
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            bottom: 16,
                            left: 16,
                            right: 16,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                // Palace Info
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 8,
                                        vertical: 4,
                                      ),
                                      decoration: BoxDecoration(
                                        color: Color(0xff4D5652),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: const Text(
                                        'Alley Palace',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 4),
                                    Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 8,
                                        vertical: 4,
                                      ),
                                      decoration: BoxDecoration(
                                        color: Color(0xff4D5652),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: const Text(
                                        '4.1 ★',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                IconButton(
                                  onPressed: () {},
                                  padding: const EdgeInsets.all(8),
                                  style: ButtonStyle(
                                      shape:const WidgetStatePropertyAll<OutlinedBorder>(
                                        CircleBorder(),
                                      ),
                                      backgroundColor:
                                          MaterialStateProperty.all<Color>(
                                              Colors.white)),
                                  icon: const Icon(
                                    Icons.favorite,
                                    color: Colors.red,
                                    size: 20,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
