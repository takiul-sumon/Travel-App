import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:travel_app/Hotel_Details.dart';

class ChooseHote extends StatelessWidget {
  final List<Map<String, dynamic>> hotels;

  const ChooseHote({super.key, required this.hotels});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: hotels.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        final hotel = hotels[index];
        return GestureDetector(
          onTap: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => HotelDetails()));
          },
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 16, 0),
            child: HotelCard(
              name: hotel['name'],
              rating: hotel['rating'].toString(),
              image: hotel['image'],
            ),
          ),
        );
      },
    );
  }
}

class HotelCard extends StatelessWidget {
  final String name;
  final String rating;
  final String image;

  const HotelCard({
    Key? key,
    required this.name,
    required this.rating,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 29.5.h,
      width: 188,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
        ),
        borderRadius: const BorderRadius.all(Radius.circular(24)),
      ),
      child: Stack(
        children: [
          Positioned(
            bottom: 16,
            left: 16,
            // right: 16,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Name Container
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 4,
                      ),
                      decoration: BoxDecoration(
                        color: const Color(0xff4D5652),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text(
                        name,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ),
                    const SizedBox(height: 4),
                    // Rating with Star
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 4,
                      ),
                      decoration: BoxDecoration(
                        color: const Color(0xff4D5652),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.star, // Star icon
                            color: Colors.amber, // Golden color for star
                            size: 14,
                          ),
                          const SizedBox(width: 4),
                          Text(
                            rating,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            right: 10,
            bottom: 15,
            child: IconButton(
              onPressed: () {},
              // padding: const EdgeInsets.all(8),
              style: ButtonStyle(
                shape: MaterialStateProperty.all<OutlinedBorder>(
                  const CircleBorder(),
                ),
                backgroundColor: MaterialStateProperty.all<Color>(
                  Colors.white,
                ),
              ),
              icon: const Icon(
                Icons.favorite,
                color: Colors.red,
                size: 20,
              ),
            ),
          )
        ],
      ),
    );
  }
}
