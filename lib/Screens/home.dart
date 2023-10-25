import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int activeIndex = 0;
  final images = [
    "asset/movie4.jpg",
    "asset/offerboat5.jpg",
    "asset/offerlava5.jpg",
    "asset/offeroneplus5.jpg"
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              width: 400,
              height: 60,
              decoration: const BoxDecoration(
                  gradient: LinearGradient(colors: [
                Color.fromARGB(168, 102, 196, 176),
                Color.fromARGB(177, 116, 241, 178),
              ])),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                      contentPadding: const EdgeInsets.all(10),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                      filled: true,
                      fillColor: Colors.white,
                      prefixIcon: const Icon(
                        Icons.search,
                        color: Colors.black,
                      ),
                      suffixIcon: const Icon(
                        Icons.center_focus_strong_outlined,
                        color: Colors.black,
                      ),
                      hintText: "Search Amazon.in",
                      hintStyle: const TextStyle(
                        color: Color.fromARGB(255, 99, 98, 98),
                      )),
                ),
              ),
            ),
            Container(
              width: 400,
              height: 40,
              decoration: const BoxDecoration(
                  color: Color.fromARGB(100, 100, 231, 198)),
              child: const Center(
                child: Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Icon(Icons.location_on_rounded),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Deliver to dsooza - Kuthiravattam 673525",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 110,
              child: ListView(scrollDirection: Axis.horizontal, children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      menu1(imagePath: 'asset/amazonfresh1.png',text: 'Fresh'),
                      menu1(imagePath: 'asset/Mobiles1.png',text: 'Mobiles'),
                      menu1(imagePath: 'asset/Fashion1.png',text: 'Fashion'),
                      menu1(imagePath: 'asset/Beauty1.png',text: 'Beauty'),
                      menu1(imagePath: 'asset/Home1.png',text: 'Home'),
                      menu1(imagePath: 'asset/Eletronics1.png',text: 'Electronics'),
                      menu1(imagePath: 'asset/Deals1.png',text: 'Deals'),
                    ],
                  ),
                ),
                
              ]),
            ),
            SizedBox(
              height: 220,
              width: double.infinity,
              child: Stack(
                children: [
                  CarouselSlider.builder(
                      itemCount: images.length,
                      itemBuilder: (context, index, realIndex) {
                        final imagePath = images[index];
                        return buildImage(imagePath, index);
                      },
                      options: CarouselOptions(
                        height: 220,
                        autoPlay: true,
                        aspectRatio: 2,
                        viewportFraction: 1,
                        onPageChanged: (index, reason) =>
                            setState(() => activeIndex = index),
                      )),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                decoration: const BoxDecoration(
                    gradient: LinearGradient(colors: [
                  Color.fromARGB(92, 106, 217, 182),
                  Color.fromARGB(255, 89, 202, 192),
                ])),

                child: Row(
                  children: [
                    Stack(
                      children: [
                        Padding(
                            padding: const EdgeInsets.all(7.0),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(7),
                              ),
                              height: 180,
                              width: 180,
                              child: const Row(
                                children: [
                                  Expanded(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        CircleAvatar(
                                          radius: 20,
                                          backgroundImage: AssetImage(
                                            'asset/amazonepay3.png',
                                          ),
                                        ),
                                        Text("Amazon pay"),
                                        CircleAvatar(
                                          backgroundColor: Colors.white,
                                          radius: 20,
                                          backgroundImage: AssetImage(
                                            'asset/scanqr3.png',
                                          ),
                                        ),
                                        Text("Scan any QR")
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        CircleAvatar(
                                          backgroundColor: Colors.white,
                                          radius: 20,
                                          backgroundImage: AssetImage(
                                            'asset/Sendmoney3.png',
                                          ),
                                        ),
                                        Text("Send Money"),
                                        CircleAvatar(
                                          backgroundColor: Colors.white,
                                          radius: 20,
                                          backgroundImage: AssetImage(
                                            'asset/paybill3.png',
                                          ),
                                        ),
                                        Text("Pay Bills"),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            )),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(7)),
                        height: 178,
                        width: 135,
                        child: Image.asset('asset/smallboxoffer2.jpg'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(7)),
                        height: 177,
                        width: 130,
                        child: Image.asset(
                          'asset/Playandwin2.jpg',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: Image.asset('asset/Bottom add4.jpg'),
            )
          ],
        ),
      )),
    );
  }

  Column menu1({required String imagePath, String? text}) {
    return Column(
                      children: [
                    Image.asset(
                      imagePath,
                      width: 70,
                      height: 70,
                    ),
                     Text(text!,
                        style: TextStyle(fontWeight: FontWeight.w500))
                      ],
                    );
  }

  Widget buildImage(String imagePath, int index) => Container(
        margin: const EdgeInsets.symmetric(),
        color: Colors.black,
        child: Image.asset(
          imagePath,
          fit: BoxFit.fill,
        ),
      );

         
      
}
