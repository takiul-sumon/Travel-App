import 'package:flutter/material.dart';

class Splash_Screan extends StatelessWidget {
  const Splash_Screan({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/photos/image1.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: const Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Align(
              // widthFactor: .5,
              alignment: Alignment.center,
              child: Text(
                'Aspen',
                style: TextStyle(
                    fontSize: 116, color: Colors.white, fontFamily: 'Hiatus'),
              ),
            ),
            SizedBox(
              height: 300,
            ),
            Row(
              children: [
                SizedBox(
                  width: 30,
                ),
                Text(
                  'Luxarious\nVacation',
                  style: TextStyle(
                      fontSize: 40,
                      color: Colors.white,
                      fontFamily: 'Montserrat-SemiBold',
                      fontWeight: FontWeight.bold),
                )
              ],
            )

            // ),
            // Positioned(child: Text(
            //     'Aspen',
            //     style: TextStyle(
            //         fontSize: 116, color: Colors.white, fontFamily: 'Hiatus'),
            //   ),
            //   left: 260,top: 126,)

            // Padding(padding: EdgeInsets.fromLTRB(263, 126, 0, 0)),
          ],
        ),
      ),
    );
  }
}
