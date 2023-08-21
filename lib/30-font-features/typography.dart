import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 61, 31, 131),
          title: const Text('Typography'),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text(
              'Hello World (tanpa apapun)',
              style: TextStyle(fontSize: 20),
            ),
            const Text(
              'Hello World (Small Caps)',
              style: TextStyle(
                fontSize: 20,
                fontFeatures: [
                  // fontFeatures berisi list dari FontFeature
                  FontFeature.enable('smcp'),
                  // FontFeature.enable() berfungsi untuk mengaktifkan fitur font
                  // 'smcp' adalah fitur font untuk mengaktifkan huruf kecil kapital
                ],
              ),
            ),
            const Text(
              'Hello World 1/2 (Small Caps and Fractions)',
              style: TextStyle(
                fontSize: 20,
                fontFeatures: [
                  FontFeature.enable('smcp'),
                  FontFeature.enable('frac'),
                ],
              ),
            ),
            const Text(
              'Hello World 19 (old style figures)',
              style: TextStyle(
                fontSize: 20,
                fontFeatures: [
                  FontFeature.oldstyleFigures(),
                  // old style figures berfungsi untuk mengaktifkan angka gaya lama
                ],
              ),
            ),
            const Text(
              'Hello World 3114 (tabular figures)',
              style: TextStyle(
                fontSize: 20,
                fontFeatures: [FontFeature.tabularFigures()],
              ),
            ),
            Text(
              'Hello World (Stylistic Set 16)',
              style: TextStyle(
                fontSize: 20,
                fontFeatures: [FontFeature.stylisticSet(16)],
              ),
            ),
          ],
        )),
      ),
    );
  }
}
