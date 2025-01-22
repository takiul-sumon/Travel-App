import 'package:flutter/material.dart';

class ChooseHotel extends StatelessWidget {
  const ChooseHotel({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 44),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Explore',
                    style: TextStyle(fontSize: 14, fontFamily: 'Montserrat'),
                  ),
                  const Text(
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
              )
            ],
          ),
          const SizedBox(height: 20),
          TextFormField(
            decoration: InputDecoration(
              hintText: 'Find things to do',
              fillColor: Color(0xffA8CCF0).withOpacity(.2),
              filled: true,
              prefixIcon: Icon(Icons.search),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(24),
              ),
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    ));
  }
}
