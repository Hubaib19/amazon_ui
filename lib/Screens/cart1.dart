// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';

class cartPage extends StatefulWidget {
  const cartPage({super.key});

  @override
  State<cartPage> createState() => _cartPageState();
}

class _cartPageState extends State<cartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        Container(
          height: 50,
          width: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 114, 226, 221),
                Color.fromARGB(255, 162, 236, 233),
              ],
            ),
          ),
          padding: const EdgeInsets.only(left: 10),
          child: const Row(
            children: [
              Icon(
                Icons.location_on_outlined,
                size: 20,
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(left: 5),
                  child: Text(
                    'Delivery to dsooza - kuthiravattam 676503',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        const Row(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 12, top: 15),
              child: Text(
                " Subtotal  ",
                style: TextStyle(fontSize: 22),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 15),
              child: Text(
                "₹219",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
              ),
            ),
          ],
        ),
        Row(
          children: [
            const SizedBox(width: 2),
            const Padding(
              padding: EdgeInsets.only(left: 12),
              child: Icon(
                Icons.check_circle,
                color: Colors.green,
              ),
            ),
            Text(
              "Your order is eligible for FREE Delivery.",
              style: TextStyle(color: Colors.green[600], fontSize: 17),
            ),
          ],
        ),
        const Row(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 35, bottom: 18),
              child: Text("  Select this option at checkout."),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 18),
              child: Text(
                " Details",
                style: TextStyle(color: Colors.blue),
              ),
            )
          ],
        ),
        Container(
          width: 360,
          height: 40,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(
              Radius.circular(10),
            ),
            border: Border.all(color: Colors.black12),
            color: Colors.yellow[600],
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  "proceed to Buy (1 item)",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.crop_square,
                color: Colors.black,
              ),
            ),
            const Text(
              "Send as a gift. Include custom message",
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        const Divider(
          thickness: 2,
        ),
        const SizedBox(
          height: 15,
        ),
        cart(
            imagepath: 'asset/book5.jpg',
            text1: 'The Monk Who Sold his',
            text2: 'Ferrai',
            text3: 'by Robin Sharma',
            text4: 'paperback',
            text5: '₹219 ',
            text6: 'M.R.P.:₹299',
            text7: 'Eligible for FREE shipping',
            text8: 'In stock',
            text9: '10 days REplacement. Buy with',
            text10: 'other items in cart'),
        const SizedBox(
          height: 15,
        ),
        cart(
            imagepath: 'asset/paulo1.jpg',
            text1: 'The Winner Stands ',
            text2: 'Alone',
            text3: 'by Robin Sharma',
            text4: 'paperback',
            text5: '₹241 ',
            text6: 'M.R.P.:₹322',
            text7: 'Eligible for FREE shipping',
            text8: 'In stock',
            text9: 'Buy more Save more,Get upto',
            text10: '₹60 cashback >'),
      ]),
    ));
  }

  Stack cart({
    required String imagepath,
    String? text1,
    String? text2,
    String? text3,
    String? text4,
    String? text5,
    String? text6,
    String? text7,
    String? text8,
    String? text9,
    String? text10,
  }) {
    return Stack(
      children: [
        Container(
          height: 350,
          width: 400,
          color: Colors.grey[200],
          child: Padding(
            padding: const EdgeInsets.only(right: 220, bottom: 140),
            child: (Image.asset(
              imagepath,
              height: 39,
              width: 30,
            )),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 180, top: 15),
          child: Column(
            children: [
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        text1!,
                        style: const TextStyle(fontSize: 16),
                      ),
                      Text(
                        text2!,
                        style: const TextStyle(fontSize: 16),
                      ),
                      Text(
                        text3!,
                        style: const TextStyle(fontSize: 16),
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Text(
                        text4!,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 4),
                      Row(
                        children: [
                          Text(
                            text5!,
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            text6!,
                            style: const TextStyle(
                                decoration: TextDecoration.lineThrough),
                          )
                        ],
                      ),
                      SizedBox(height: 2),
                      Row(
                        children: [
                          Text(
                            text7!,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Text(
                        text8!,
                        style:
                            TextStyle(color: Color.fromARGB(255, 68, 177, 72)),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(text9!),
                      SizedBox(
                        height: 2,
                      ),
                      Text(text10!)
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Positioned(
          top: 220,
          left: 10,
          child: Row(
            children: [
              Container(
                height: 38,
                width: 150,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(10),
                  ),
                  border: Border.all(color: Colors.black12),
                  color: Colors.white,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      child: Icon(
                        Icons.delete_outline,
                        color: Colors.black,
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 207, 205, 205),
                        minimumSize: Size(40, 40),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                      ),
                    ),
                    Text('1'),
                    ElevatedButton(
                      onPressed: () {},
                      child: Icon(
                        Icons.add,
                        color: Colors.black,
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 207, 205, 205),
                        minimumSize: Size(40, 40),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 10,
              ),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.white),
                  shape: MaterialStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                onPressed: () {},
                child: Text('Delete', style: TextStyle(color: Colors.black)),
              ),
              SizedBox(
                width: 10,
              ),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.white),
                  shape: MaterialStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                onPressed: () {},
                child: Text('Save for later',
                    style: TextStyle(color: Colors.black)),
              ),
            ],
          ),
        ),
        Positioned(
          top: 280,
          left: 10,
          child: Row(
            children: [
              ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.white),
                      shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)))),
                  onPressed: () {},
                  child: Text(
                    'See more like this',
                    style: TextStyle(color: Colors.black),
                  ))
            ],
          ),
        )
      ],
    );
  }
}
