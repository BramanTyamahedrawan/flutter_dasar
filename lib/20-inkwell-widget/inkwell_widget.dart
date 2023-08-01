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
          title: const Text('InkWell Widget'),
          backgroundColor: const Color.fromARGB(255, 61, 31, 131),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              // 1. Button Menggunakan ElevatedButton
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.amber,
                  shape: const StadiumBorder(),
                ),
                child: const Text('Elevated Button'),
              ),
              // 2. Button Menggunakan InkWell
              Material(
                borderRadius: BorderRadius.circular(20),
                elevation: 5,
                child: Container(
                  width: 115,
                  height: 25,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.lightBlue,
                        Colors.indigo.shade600,
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Material(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(20),
                    child: InkWell(
                      // widget InkWell berfungsi untuk membuat sebuah widget button yang dapat di klik
                      // widget inkwell digunakan untuk membuat sebuah button yang ada gradaasi warna
                      splashColor:
                          Colors.lightBlueAccent, // warna efek ketika di klik
                      borderRadius: BorderRadius.circular(20),
                      onTap: () {},
                      child: const Center(
                        child: Text(
                          'InkWell Button',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ), // Inkwell Button
            ],
          ),
        ),
      ),
    );
  }
}
