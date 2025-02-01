import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class HotelDetails extends StatelessWidget {
  HotelDetails({super.key});
  final List<Map<String, dynamic>> facilityHotel = [
    {
      'Icon': Icons.wifi,
      'facility': '1 Heater',
    },
    {
      'Icon': Icons.restaurant,
      'facility': 'Dinner',
    },
    {
      'Icon': Icons.bathtub,
      'facility': '1 Tub',
    },
    {
      'Icon': Icons.pool,
      'facility': 'Pool',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Container(
                height: 47.5.h,
                width: 90.h,
                child: Stack(
                  children: [
                    Container(
                        height: 42.h,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/photos/image2.jpg'),
                            fit: BoxFit.cover,
                          ),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(24)),
                        )),
                    Positioned(
                        left: 10,
                        top: 10,
                        child: Container(
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black.withOpacity(.1),
                                    blurRadius: 5,
                                    spreadRadius: 1)
                              ],
                              color: Colors.white,
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(12)),
                          child: IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.arrow_back_ios_rounded),
                          ),
                        )),
                    Positioned(
                      right: 10,
                      bottom: 20,
                      child: IconButton(
                        onPressed: () {},
                        // padding: const EdgeInsets.all(8),
                        style: ButtonStyle(
                          shape: MaterialStateProperty.all<OutlinedBorder>(
                            const CircleBorder(),
                          ),
                          backgroundColor: MaterialStateProperty.all<Color>(
                            Colors.white.withOpacity(.9),
                          ),
                        ),
                        icon: const Icon(
                          Icons.favorite,
                          color: Colors.red,
                          size: 30,
                        ),
                      ),
                    )
                  ],
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text(
                  'Coeurdes Alpes',
                  style: TextStyle(
                    fontSize: 24,
                    fontFamily: 'Montserrat',
                  ),
                ),
                const Spacer(),
                TextButton(
                  onPressed: () {},
                  style: const ButtonStyle(),
                  child: const Text(
                    'See All',
                    style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'circularxx',
                        color: Color(0xff176FF2)),
                  ),
                ),
              ],
            ),
            const Row(
              children: [
                const Icon(
                  Icons.star, // Star icon
                  color: Colors.amber, // Golden color for star
                  size: 14,
                ),
                const SizedBox(width: 4),
                Text(
                  '4.5 (365 Reviews)', // Display the rating
                  style: const TextStyle(
                    color: Colors.black, // White color for text
                    fontSize: 12,
                  ),
                ),
                // Spacing between text and star
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
                'Aspen is as close as one can get to a storybook alpine town in America. The choose-your-own- adventure possibilities-skiing, hiking, dining shopping and....'),
            const SizedBox(
              height: 10,
            ),
            Row(
              // crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    print('Read More tapped');
                  },
                  child: const Text(
                    'Read more',
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'circularxx',
                      color: Color(0xff176FF2),
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.keyboard_arrow_down,
                      color: Color(0xff176FF2)),
                )
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Text(
                  'Facilities',
                  style: TextStyle(fontSize: 18, fontFamily: 'Montserrat'),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: facilityHotel.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                    child: Container(
                      height: 77,
                      width: 74,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            16,
                          ),
                          color: Color(0xff176FF2).withOpacity(.05)),
                      // color: Color(0xff176FF2).withOpacity(.05),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            facilityHotel[index]['Icon'] as IconData,
                            color: Colors.black38,
                            size: 25,
                          ),
                          Text(
                            '${facilityHotel[index]['facility']}',
                            style: const TextStyle(
                                color: Colors.black38, fontSize: 10),
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),SizedBox(height: 10,),
            Row( mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
              // padding: const EdgeInsets.symmetric(horizontal: 16),
              height: 56,
              width: 355,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Price Section
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Price',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        '\$199',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.green.shade400,
                        ),
                      ),
                    ],
                  ),SizedBox(width: 55,),

                  // "Book Now" Button
                  Container(
                    height: 56,
                    width: 200,
                    decoration: BoxDecoration(
                      color: const Color(0xff176FF2),
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.blue.shade100,
                          blurRadius: 10,
                          spreadRadius: 2,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                    child: TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            'Book Now',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(width: 8),
                          Icon(Icons.arrow_right_alt,
                              color: Colors.white, size: 24),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
              ],
            )
          ],
        ),
      ),
    );
  }
}
