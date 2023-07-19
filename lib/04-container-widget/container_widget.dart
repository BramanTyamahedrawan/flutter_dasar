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
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 61, 12, 131),
          title: const Text('Container Widget'),
        ),
        body: Container(
          // widget container digunakan untuk menampilkan widget lain.
          // widget container biasanya digunakan untuk menampilkan widget yang memiliki banyak properti
          color: Colors.lightGreen,
          margin: // margin untuk menentukan jarak dari tepi widget
              const EdgeInsets.all(10),
          padding: // padding adalah jarak antara tepi widget dengan konten di dalamnya
              const EdgeInsets.all(10),
          child: Container(
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              // decoration untuk menambahkan dekorasi pada widget
              color: Colors.lightBlue,
              borderRadius: BorderRadius.circular(
                  10), // borderRadius untuk menambahkan radius pada widget
              border: Border.all(
                // border untuk menambahkan garis pada widget
                color: Colors.purple,
                width: 2,
              ),
              gradient: // gradient untuk menambahkan gradien pada widget
                  const LinearGradient(
                // LinearGradient untuk menambahkan gradien secara linear
                colors: [
                  // [] untuk menampung beberapa warna
                  Colors.purpleAccent,
                  Colors.lightBlue,
                ],
                begin: Alignment
                    .topLeft, // begin untuk menentukan posisi awal gradien
                end: Alignment
                    .bottomRight, // end untuk menentukan posisi akhir gradien
              ),
            ),
          ),
        ),
      ),
    );
  }
}
