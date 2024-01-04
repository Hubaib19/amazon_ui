// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

import 'oders.dart';

class Account_page extends StatefulWidget {
  const Account_page({super.key});

  @override
  State<Account_page> createState() => _Account_pageState();
}

class _Account_pageState extends State<Account_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(230, 104, 222, 211),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              alignment: Alignment.topLeft,
              child: Image.asset(
                'asset/.in.png',
                width: 120,
                height: 45,
                color: Colors.black,
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 15),
                    child: Icon(
                      Icons.notifications_outlined,
                      color: Colors.black,
                    ),
                  ),
                  Icon(
                    Icons.search,
                    color: Colors.black,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Hello, dsooza',
                    style: TextStyle(fontSize: 22),
                  ),
                  Icon(
                    Icons.person_3_outlined,
                    color: Colors.grey,
                    size: 45,
                  )
                ],
              ),
              const SizedBox(height: 20),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      boxcontainer(text: 'Your Orders'),
                      boxcontainer(text: 'Buy Again'),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const Account()));
                          },
                          child: boxcontainer(text: 'Your Account')),
                      boxcontainer(text: 'Your Wish List'),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Your Orders',
                    style: TextStyle(fontSize: 22),
                  ),
                  Text(
                    'see all',
                    style: TextStyle(color: Colors.blue, fontSize: 19),
                  )
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    orders(imagepath: 'asset/orders1.png'),
                    const SizedBox(
                      width: 10,
                    ),
                    orders(imagepath: 'asset/orders2.png'),
                    const SizedBox(
                      width: 10,
                    ),
                    orders(imagepath: 'asset/orders3.png'),
                    const SizedBox(
                      width: 10,
                    ),
                    orders(imagepath: 'asset/orders4.png')
                  ],
                ),
              ),
              const SizedBox(
                height: 35,
              ),
              Container(
                height: 2,
                width: double.infinity,
                color: Colors.grey,
              ),
              const SizedBox(
                height: 35,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Keep shopping for',
                    style: TextStyle(fontSize: 22),
                  ),
                  Text(
                    'Edit | Browsing history',
                    style: TextStyle(color: Colors.blue, fontSize: 19),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    shopping(
                        imagepath: 'asset/shop1.png',
                        text1: 'Combs',
                        text2: '1 viewed'),
                    const SizedBox(width: 10),
                    shopping(
                        imagepath: 'asset/shop2.png',
                        text1: 'iphone 7 case',
                        text2: '3 viewed'),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    shopping(
                        imagepath: 'asset/shop3.png',
                        text1: 'slipper',
                        text2: '3 viewed'),
                    const SizedBox(width: 10),
                    shopping(
                        imagepath: 'asset/shop4.png',
                        text1: 'Arsenal jersey',
                        text2: '9 viewed'),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Column shopping({required String imagepath, String? text1, String? text2}) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(10)),
          height: 150,
          width: 190,
          child: Image.asset(
            imagepath,
            fit: BoxFit.fill,
          ),
        ),
        Text(
          text1!,
          textAlign: TextAlign.start,
          style: const TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
        ),
        Text(
          text2!,
          textAlign: TextAlign.start,
        ),
      ],
    );
  }

  SingleChildScrollView orders({required String imagepath}) {
    return SingleChildScrollView(
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(10)),
        height: 190,
        width: 220,
        child: Image.asset(imagepath),
      ),
    );
  }

  Container boxcontainer({required String text}) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          border: Border.all(color: Colors.grey)),
      height: 75,
      width: 180,
      child: Center(
          child: Text(
        text,
        style: const TextStyle(fontSize: 20),
      )),
    );
  }
}
