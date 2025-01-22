import 'package:flutter/material.dart';

class ChooseHotel extends StatelessWidget {
  const ChooseHotel({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> hotelChoice = [
      'Locations',
      'Hotels',
      'Food',
      'Adventure',
      'Actions'
    ];

    return DefaultTabController(
      length: 3, // Number of tabs
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 44),
          child: Column(
            children: [
              // Header Section
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Explore',
                        style:
                            TextStyle(fontSize: 14, fontFamily: 'Montserrat'),
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
                          style: TextStyle(
                              fontSize: 12, fontFamily: 'circularxx')),
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
              ),
              const SizedBox(height: 20),
              // Search Bar
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Find things to do',
                  fillColor: const Color(0xffA8CCF0).withOpacity(.2),
                  filled: true,
                  prefixIcon: const Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(24),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              // TabBar Section
              TabBar(
                labelColor: Colors.blue,
                unselectedLabelColor: Colors.grey,
                indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  color: Color(0xff176FF2).withOpacity(.2),
                ),
                // indicatorColor: Colors.blue,
                 dividerColor: Colors.transparent,
                tabs: const [
                  Text("Locations",style: TextStyle(),),
                  Tab(text: "Hotels"),
                  Tab(text: "Food"),
                  Tab(text: "Adventure"),


                ],
              ),
            const  Expanded(
                // TabBarView for tab content
                child: TabBarView(
                  children: [
                    Center(child: Text("Content for Locations")),
                    Center(child: Text("Content for Hotels")),
                    Center(child: Text("Content for Food")),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
