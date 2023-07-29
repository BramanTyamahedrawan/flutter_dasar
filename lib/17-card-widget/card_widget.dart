import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[300],
        appBar: AppBar(
          title: const Text('Card Widget'),
          backgroundColor: const Color.fromARGB(255, 61, 12, 131),
        ),
        body: Container(
          margin: const EdgeInsets.all(10),
          child: ListView(
            children: [
              cardBuilder(
                Icons.home,
                'Home',
              ), // Memanggil function cardBuilder dengan parameter Icons.home dan 'Home'
              cardBuilder(
                Icons.search,
                'Search',
              ), // Memanggil function cardBuilder dengan parameter Icons.search dan 'Search'
            ],
          ),
        ),
      ),
    );
  }

  Card cardBuilder(IconData icon, String text) {
    // Card cardBuilder adalah sebuah function yang berfungsi untuk membuat widget Card
    // Card cardBuilder memiliki 2 parameter yaitu icon dan text
    Random random = Random();

    return Card(
      // widget Card berfungsi untuk membuat card
      elevation: 10,
      child: Row(
        children: [
          Container(
              margin: const EdgeInsets.all(5),
              child: Icon(
                icon,
                color: Color.fromARGB(255, random.nextInt(256),
                    random.nextInt(256), random.nextInt(256)),
              )),
          Text(text)
        ],
      ),
    );
  }
}
