// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class Categories_page extends StatefulWidget {
  const Categories_page({super.key});

  @override
  State<Categories_page> createState() => _Categories_pageState();
}

class _Categories_pageState extends State<Categories_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(230, 104, 222, 211),

        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: TextFormField(
                            decoration: InputDecoration(
                              prefixIcon: const Padding(
                                padding: EdgeInsets.only(
                                  left: 6,
                                ),
                                child: Icon(
                                  Icons.search,
                                  color: Colors.black38,
                                  size: 23,
                                ),
                              ),
                              suffixIcon: Icon(
                                Icons.center_focus_strong_outlined,
                                color: Colors.grey[20],
                              ),
                              filled: true,
                              fillColor: Colors.white,
                              contentPadding: const EdgeInsets.only(top: 10),
                              border: const OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(7),
                                ),
                                borderSide: BorderSide(
                                  color: Colors.black38,
                                  width: 1,
                                ),
                              ),
                              hintText: 'Search Amazon.in',
                              hintStyle: const TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 17,
                              ),
                            ),
                          ),
                ),
                Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color.fromARGB(230, 104, 222, 211),
                        Color.fromARGB(255, 242, 249, 249),
                      ],
                    ),
                  ),
                  child: Stack(
                    children: [
                      Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            children: [
                              Container(
                                width: double.infinity,
                                height: 110,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(11),
                                  color: Colors.white,
                                ),
                                child: Stack(
                                  children: [
                                    Positioned(
                                      top: 10,
                                      left: 15,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          gradient: const LinearGradient(
                                            begin: Alignment.topCenter,
                                            end: Alignment.bottomCenter,
                                            colors: [
                                              Color.fromARGB(230, 244, 189, 87),
                                              Color.fromARGB(255, 238, 214, 4),
                                            ],
                                          ),
                                        ),
                                        height: 50,
                                        width: 150,
                                        child: Image.asset('asset/pay.png'),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    const Positioned(
                                      bottom: 20,
                                      left: 37,
                                      child: Text(
                                        'Amazon Pay',
                                        style: TextStyle(fontSize: 18),
                                      ),
                                    ),
                                    Positioned(
                                      top: 10,
                                      left: 190,
                                      child: Container(
                                        height: 50,
                                        width: 150,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          gradient: const LinearGradient(
                                            begin: Alignment.topCenter,
                                            end: Alignment.bottomCenter,
                                            colors: [
                                              Color.fromARGB(230, 248, 186, 71),
                                              Color.fromARGB(255, 238, 214, 4),
                                            ],
                                          ),
                                        ),
                                        child: Image.asset(
                                          'asset/mini.tv.png',
                                        ),
                                      ),
                                    ),
                                    const Positioned(
                                        bottom: 20,
                                        left: 200,
                                        child: Text(
                                          'Amazon miniTv',
                                          style: TextStyle(fontSize: 18),
                                        ))
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    categories(
                                        imagepath: 'asset/cate1.png', text: 'Prime'),
                                    categories(
                                        imagepath: 'asset/cate2.png',
                                        text: 'Deals and savings'),
                                  ]),
                              const SizedBox(
                                height: 15,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  categories(
                                      imagepath: 'asset/cate3.png',
                                      text: 'Automative'),
                                  categories(
                                      imagepath: 'asset/cate4.png',
                                      text: 'Fashion & Beauty'),
                                ],
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  categories(
                                      imagepath: 'asset/cate5.png',
                                      text: 'Groceries & pet Supplies'),
                                  categories(
                                      imagepath: 'asset/cate6.png',
                                      text: 'Baby Care'),
                                ],
                              ),
                              const SizedBox(height: 15),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  categories(
                                      imagepath: 'asset/cate7.png',
                                      text: 'Furnitures & Appliances'),
                                  categories(
                                      imagepath: 'asset/cate9.png',
                                      text: 'Books & Education'),
                                ],
                              )
                            ],
                          ))
                          
                    ],
                  ),
                ),
              ],
            ),
          ),
          
        ));
  }

  Stack categories({required String imagepath, String? text}) {
    return Stack(
      children: [
        Container(
          height: 200,
          width: 170,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15), color: Colors.white),
          child: Container(),
        ),
        Positioned(
          top: 100,
          child: Container(
            width: 170,
            height: 100,
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                    topLeft: Radius.circular(80),
                    topRight: Radius.circular(80)),
                color: Colors.cyan[50]),
          ),
        ),
        Positioned(
          top: 12,
          left: 8,
          child: Text(
            text!,
            style: const TextStyle(fontSize: 20),
          ),
        ),
        Positioned(
            left: 23,
            top: 50,
            child: Image.asset(
              imagepath,
              height: 120,
              width: 120,
            )),
      ],
    );
  }
}
