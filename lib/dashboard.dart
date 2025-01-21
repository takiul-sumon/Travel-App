import 'package:flutter/material.dart';

class ChooseHotel extends StatelessWidget {
  const ChooseHotel({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 44),
        child: Column(
          children: [
            Placeholder(
              fallbackHeight: MediaQuery.of(context).size.height * .09,
              child: Row(
                children: [
                   Column(
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
                )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
