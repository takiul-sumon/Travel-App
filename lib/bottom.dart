import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class BottomPart extends StatelessWidget {
  const BottomPart({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
         Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Explore',
              style: TextStyle(fontSize: 1.72.h, fontFamily: 'Montserrat'),
            ),
            Text(
              'Aspen',
              style: TextStyle(
                  fontSize: 3.94.h,
                  fontFamily: 'Montserrat-Regular',
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
        Row(
          children: [
            Container(
              height: 1.98.h,
              width: 4.27.w,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/icons/icon1.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
             SizedBox(
              width: .07.w,
            ),
            const Text('Aspen, Usa',
                style: TextStyle(fontSize: 12, fontFamily: 'circularxx')),
             SizedBox(
              width: .07.w,
            ),
            Container(
              height: 1.98.h,
              width: 4.27.w,
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
