import 'package:flutter/material.dart';

class Account extends StatelessWidget {
  const Account({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
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
        ),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          const Padding(
            padding: EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                // SizedBox(width: 5,),
                Text(
                  "Orders",
                  style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          orders1(text: 'Your Orders'),
          orders1(text: 'Subscribe & save'),
          const SizedBox(
            height: 15,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  "Account Settings",
                  style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          orders1(text: 'Login & security'),
          orders1(text: 'Your Addresses'),
          orders1(text: 'Login With Amazon'),
          orders1(text: 'Content and devices'),
          orders1(text: 'Manage Your Profiles'),
          orders1(text: 'Default Purchase Settings'),
          orders1(text: 'Manage Prime membership'),
          orders1(text: 'Memberships & Subscriptions'),
        ]),
      ),
    );
  }

  Column orders1({required String text}) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8, right: 8),
          child: Container(
            width: double.infinity,
            height: 60,
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.vertical(),
                color: Colors.white,
                border: Border.all(
                    color: const Color.fromARGB(255, 218, 216, 216))),
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    text,
                    style: const TextStyle(fontSize: 18),
                  ),
                  const Icon(Icons.arrow_forward_ios_outlined)
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
