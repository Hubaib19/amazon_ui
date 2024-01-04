// ignore_for_file: prefer_const_constructors

import 'package:amazon_ui/view/buyagain.dart';
import 'package:amazon_ui/view/cart1.dart';
import 'package:amazon_ui/view/shopping.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class Cart_page extends StatefulWidget {
  const Cart_page({super.key});

  @override
  State<Cart_page> createState() => _Cart_pageState();
}

// ignore: camel_case_types
class _Cart_pageState extends State<Cart_page> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
            appBar: PreferredSize(
              preferredSize: const Size.fromHeight(100),
              child: AppBar(
                backgroundColor: const Color.fromARGB(230, 104, 222, 211),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Container(
                        height: 42,
                        margin: const EdgeInsets.only(left: 15),
                        child: Material(
                          borderRadius: BorderRadius.circular(7),
                          elevation: 1,
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
                      ),
                    ),
                  ],
                ),
                bottom: TabBar(
                  tabs: const [
                    Tab(text: 'Cart'),
                    Tab(text: 'Buy Again'),
                    Tab(text: 'Keep Shopping For'),
                  ],
                  indicatorColor: Colors.black,
                  labelColor: Colors.black,
                  onTap: (value) {},
                ),
              ),
            ),
            body: SafeArea(
                child: Column(
              children: const [
                Expanded(
                    child: TabBarView(
                        children: [cartPage(), BuyAgainPage(), Shopping()]))
              ],
            ))));
  }
}
