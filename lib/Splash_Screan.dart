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
        child: Column(
          children: [
            Align(
              alignment: Alignment.center,
              child: Text(
                'Aspen',
                style: TextStyle(
                    fontSize: 50, color: Colors.white, fontFamily: 'Hiatus'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
