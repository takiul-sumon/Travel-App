import 'package:flutter/material.dart';

class TravelListScreen extends StatelessWidget {
  const TravelListScreen({super.key});

  final List<Map<String, String>> travelDeals = const [
    {
      'image': 'assets/photos/image1.jpg',
      'title': 'Explore Aspen',
      'deal': 'Hot Deal',
    },
    {
      'image': 'assets/photos/image2.jpg',
      'title': 'Swiss Adventure',
      'deal': 'Limited Offer',
    },
    {
      'image': 'assets/photos/image3.jpg',
      'title': 'Paris Getaway',
      'deal': 'Exclusive',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 174, // Increased height slightly to fit text
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        // padding: const EdgeInsets.symmetric(horizontal: 16),
        itemCount: travelDeals.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 16),
            child: TravelCard(
              imagePath: travelDeals[index]['image']!,
              title: travelDeals[index]['title']!,
              dealText: travelDeals[index]['deal']!,
            ),
          );
        },
      ),
    );
  }
}

// **TravelCard Widget**
class TravelCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final String dealText;

  const TravelCard({
    super.key,
    required this.imagePath,
    required this.title,
    required this.dealText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisSize: MainAxisSize.min, // Prevent overflow
      crossAxisAlignment: CrossAxisAlignment.start, // Align text properly
      children: [
        Container(
          height: 120, // Proper height for image
          width: 174,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            image: DecorationImage(
              image: AssetImage(imagePath),
              fit: BoxFit.cover,
            ),
          ),
          child: Stack(
            children: [
              Positioned(
                bottom: 8,
                right: 8,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                  decoration: BoxDecoration(
                    color: const Color(0xff3A544F),
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 4,
                        offset: Offset(2, 2),
                      ),
                    ],
                  ),
                  child: const Text(
                    '4N/5D',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 4), // Reduced gap
        Text(
          title,
          style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        const SizedBox(height: 2), // Reduced space
        Row(
          children: [
            const Icon(
              Icons.trending_up, // Icon for deal
              color: Colors.blue,
              size: 14,
            ),
            const SizedBox(width: 4),
            Text(
              dealText,
              style: const TextStyle(color: Colors.black87, fontSize: 12),
            ),
          ],
        ),
      ],
    );
  }
}
