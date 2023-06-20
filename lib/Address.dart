import 'package:flutter/material.dart';
import 'package:quikies/Sign_Up.dart';
import 'package:quikies/YourAddress1.dart';
import 'package:quikies/add_address.dart';
import 'package:quikies/location.dart';
import 'package:quikies/map_address.dart';

class Address extends StatelessWidget {
  const Address({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(30.0, 100.0, 20.0, 20.0),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    // Handle icon button press
                  },
                  child: const Icon(
                    Icons.arrow_back,
                    color: Colors.blue,
                    size: 35,
                  ),
                ),
                const SizedBox(width: 70.0),
                const Text(
                  'My Address',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/map.png',
                  width: 300,
                  height: 300,
                ),
                const SizedBox(height: 40.0),
                const Text(
                  'You haven’t saved any address',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16.0,
                  ),
                ),
                const SizedBox(height: 05.0),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>LocationPage1()),
                    ); // Handle arrow button tap
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.add_circle_outline,
                        color: Colors.blue,
                        size: 24,
                      ),
                      const SizedBox(width: 05.0),
                      Text(
                        'Add Your Address',
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
