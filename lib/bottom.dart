import 'package:flutter/material.dart';

class BottomPart extends StatelessWidget {
  const BottomPart({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
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
                style: TextStyle(fontSize: 12, fontFamily: 'circularxx')),
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
    );
  }
}
