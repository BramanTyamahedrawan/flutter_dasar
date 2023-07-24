import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(const AnimatedContainerApp());

class AnimatedContainerApp extends StatefulWidget {
  const AnimatedContainerApp({Key? key}) : super(key: key);
  @override
  _AnimatedContainerAppState createState() => _AnimatedContainerAppState();
}

class _AnimatedContainerAppState extends State<AnimatedContainerApp> {
  Random random = Random(); // Random berfungsi untuk membuat angka random

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 61, 12, 131),
          title: const Text('Animated Container'),
        ),
        body: Center(
            child: GestureDetector(
                // GestureDetector berfungsi untuk mendeteksi gesture yang dilakukan oleh user
                onTap: () {
                  // onTap berfungsi untuk mendeteksi jika user melakukan tap
                  setState(() {});
                },
                child: AnimatedContainer(
                  // AnimatedContainer berfungsi untuk membuat container yang dapat di animasikan
                  color: Color.fromARGB(
                      // Color.fromARGB berfungsi untuk membuat warna dengan kode ARGB
                      255, // Alpha (transparansi)
                      random.nextInt(256), // Red (merah) dengan nilai random
                      random.nextInt(256), // Green (hijau) dengan nilai random
                      random.nextInt(256)), // Blue (biru) dengan nilai random
                  duration: const Duration(seconds: 1), // Durasi animasi
                  width: 75.0 +
                      random.nextInt(
                        151,
                      ), // Lebar container dengan nilai random antara 75 sampai 150
                  height: 75.0 +
                      random.nextInt(
                        151,
                      ), // Tinggi container dengan nilai random antara 75 sampai 150
                ))),
      ),
    );
  }
}
