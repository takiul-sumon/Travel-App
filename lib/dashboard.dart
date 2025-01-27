import 'package:flutter/material.dart';

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
          children: [
            // Header Section
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Explore',
                      style: TextStyle(fontSize: 14, fontFamily: 'Montserrat'),
                    ),
                    Text(
                      'Aspen',
                      style: TextStyle(
                          fontSize: 32,
                          fontFamily: 'Montserrat-Regular',
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      height: 16,
                      width: 16,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/icons/icon1.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 6,
                    ),
                    const Text('Aspen, Usa',
                        style:
                            TextStyle(fontSize: 12, fontFamily: 'circularxx')),
                    const SizedBox(
                      width: 6,
                    ),
                    Container(
                      height: 16,
                      width: 16,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/icons/icon2.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20),
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
                              // margin: const EdgeInsets.symmetric(horizontal: 8),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 16, vertical: 8),
                              decoration: BoxDecoration(
                                color: isSelected
                                    ? Colors.blue.withOpacity(0.1)
                                    : Colors
                                        .transparent, // Background for selected
                                borderRadius: BorderRadius.circular(
                                    20), // Rounded corners
                              ),
                              child: Text(
                                e,
                                style: TextStyle(
                                  color: isSelected
                                      ? Colors.blue
                                      : Colors
                                          .grey, // Text color based on selection
                                  fontWeight: isSelected
                                      ? FontWeight.bold
                                      : FontWeight.normal, // Bold for selected
                                  fontSize: 16,
                                ),
                              )),
                        );
                      },
                    ).toList()),
              ),
            ),
          const  SizedBox(
              height: 32,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
              const  Text(
                  'Popular',
                  style: TextStyle(fontSize: 18, fontFamily: 'Montserrat',),
                ),
              const  SizedBox(
                  width: 225,
                ),
                TextButton(
                    onPressed: () {},style:const ButtonStyle(),
                    child:const Text(
                      'See All',
                      style: TextStyle(fontSize: 12, fontFamily: 'circularxx',color: Color(0xff176FF2)),
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
