import 'package:flutter/material.dart';

class Splash_Screan extends StatelessWidget {
  const Splash_Screan({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/photos/image1.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           const SizedBox(
              height: 20,
            ),
          const  Align(
              // widthFactor: .5,
              alignment: Alignment.center,
              child: Text(
                'Aspen',
                style: TextStyle(
                    fontSize: 116, color: Colors.white, fontFamily: 'Hiatus'),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .52,
            ),
            Padding(
              padding:const EdgeInsets.fromLTRB(20, 0, 0, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                const  Text('Plan your',
                      style: TextStyle(
                          fontSize: 24,
                          color: Colors.white,
                          fontFamily: 'Montserrat-SemiBold',
                          fontWeight: FontWeight.bold)),
              const  Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 10, 10),
                  child: const  Text(
                      'Luxarious\nVacation',
                      style: TextStyle(
                          fontSize: 40,
                          color: Colors.white,
                          fontFamily: 'Montserrat-Regular',
                          fontWeight: FontWeight.bold),
                    ),
                ),
                  SizedBox(
                    height: 52,width: MediaQuery.of(context).size.width*.9,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        'Explore',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                      style: ElevatedButton.styleFrom( 
                        backgroundColor:
                            Color(Color.fromRGBO(23, 111, 242, 1).value),
                        // onPrimary: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        // padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                      ),
                    ),
                  )
                ],
              ),
            )

          ],
        ),
      ),
    );
  }
}
